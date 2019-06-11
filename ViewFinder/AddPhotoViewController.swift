//
//  AddPhotoViewController.swift
//  ViewFinder
//
//  Created by Apple on 6/11/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class AddPhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    var imagePick = UIImagePickerController()

    override func viewDidLoad() {
        super.viewDidLoad()
        imagePick.delegate = self
        // Do any additional setup after loading the view.
    }
    

    @IBAction func takePhoto(_ sender: Any) {
        imagePick.sourceType = .camera
        
        present(imagePick, animated: true, completion: nil)
    
    }
    
    @IBAction func findPhoto(_ sender: Any) {
        imagePick.sourceType = .photoLibrary
        
        present(imagePick, animated: true, completion: nil)
    }
    
    @IBAction func savePhoto(_ sender: Any) {
//          imagePick.sourceType = .savedPhotosAlbum
//         present(imagePick, animated: true, completion: nil)
    }
    
    @IBAction func chooseAlbum(_ sender: Any) {
        imagePick.sourceType = .savedPhotosAlbum //need to check this out further
         present(imagePick, animated: true, completion: nil)
        
    }
    
    @IBOutlet weak var changeImage: UIImageView!
    
    
    @IBOutlet weak var textField: UITextField!
    
    
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            changeImage.image = selectedImage
        }
        
        imagePick.dismiss(animated: true, completion: nil )
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
