//
//  ViewController.swift
//  NetworkRequest
//
//  Created by kirang on 6/5/18.
//  Copyright © 2018 kirang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var downloadedImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageURL = URL(string: "https://upload.wikimedia.org/wikipedia/commons/4/4d/Cat_November_2010-1a.jpg")!
        
        let task = URLSession.shared.dataTask(with: imageURL) { (data, response, error) in
            
            if error == nil {
                let downloadImage = UIImage(data: data!)
                
                performUIUpdatesOnMain {
                    self.imageView.image = downloadImage
                }
            }
        }
        
        task.resume()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

