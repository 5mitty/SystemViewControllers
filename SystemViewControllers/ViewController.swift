//
//  ViewController.swift
//  SystemViewControllers
//
//  Created by Jacob Smith on 11/29/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func shareButtonTapped(_ sender: UIButton) {
        guard let image = imageView.image else { return }
        let activityController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        activityController.popoverPresentationController?.sourceView = sender
        
        present(activityController,animated: true, completion: nil)
    }
    
    @IBAction func safariButtonTapped(_ sender: UIButton) {
        if let url = URL(string: "https://www.google.com") {
            let safariViewController = SFSafariViewController(url: url)
            present(safariViewController, animated: true, completion: nil)
        }
    }
    
    @IBAction func photosButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func emailButtonTapped(_ sender: UIButton) {
        
    }
}

