//
//  ViewController.swift
//  Camera
//
//  Created by TS on 2018/08/17.
//  Copyright © 2018年 TS. All rights reserved.
//

import UIKit

    class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate{

    @IBOutlet weak var imageView: UIImageView!
    @IBAction func launchCamera(_ sender: UIBarButtonItem) {
        let camera = UIImagePickerControllerSourceType.camera
        
        if UIImagePickerController.isSourceTypeAvailable(camera){
            let picker = UIImagePickerController()
            picker.sourceType = camera
            picker.delegate = self
            self.present(picker,animated:true)
        }
    }
        func imagePickerController(_ picker: UIImagePickerController,
                                   didFinishPickingMediaWithInfo info: [String : Any]){
            let image = info[UIImagePickerControllerOriginalImage] as! UIImage
            self.imageView.image = image
            UIImageWriteToSavedPhotosAlbum(image,nil,nil ,nil )
            self.dismiss(animated: true)
        }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

