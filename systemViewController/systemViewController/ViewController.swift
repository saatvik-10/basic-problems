//
//  ViewController.swift
//  systemViewController
//
//  Created by SDC-USER on 17/11/25.
//

import UIKit
import SafariServices
import MessageUI

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, MFMailComposeViewControllerDelegate {
    @IBOutlet var imageViewOutlet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func shareButtonTapped(_ sender: UIButton) {
        guard let image = imageViewOutlet.image else { return }
        let activityViewController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView = sender
        present(activityViewController, animated: true, completion: nil)
    }
    
    @IBAction func cameraButtonTapped(_ sender: UIButton) {
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        let alertController = UIAlertController(title: "Choose Image", message: nil, preferredStyle: .actionSheet)
        let cancelActionController = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelActionController)
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            let cameraActionController = UIAlertAction(title: "Camera", style: .default, handler: { action in
                imagePickerController.sourceType = .camera
                self.present(imagePickerController, animated: true, completion: nil)
            })
            alertController.addAction(cameraActionController)
        }
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
            let photoLibraryActionController = UIAlertAction(title: "Photo Library", style: .default, handler: { action in
                imagePickerController.sourceType = .photoLibrary
                self.present(imagePickerController, animated: true, completion: nil)
            })
            alertController.addAction(photoLibraryActionController)
        }
    }
    
    @IBAction func safariButtonTapped(_ sender: UIButton) {
        if let url = URL(string: "https://www.apple.com"){
            let safariViewController = SFSafariViewController(url:url)
            present(safariViewController, animated: true, completion: nil)
        }
    }
}

