//
//  PhotoViewController.swift
//  PhotoTapps
//
//  Created by Роман on 31.07.2024.
//

import UIKit

class PhotoViewController: UIViewController {
    @IBOutlet weak var photoUIImageView: UIImageView!
    
    var image: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoUIImageView.image = image
        photoUIImageView.layer.cornerRadius = 20
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func shareAction(_ sender: Any) {
        
        let shareController =  UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        
        present(shareController, animated: true, completion: nil)
        
    }
    
     
}
