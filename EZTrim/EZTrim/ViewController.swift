//
//  ViewController.swift
//  EZTrim
//
//  Created by Jonathan Leo on 2/19/20.
//  Copyright © 2020 Jonathan Leo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, FrameExtractorDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    
    var frameExtractor: FrameExtractor!

    override func viewDidLoad() {
        super.viewDidLoad()
        frameExtractor = FrameExtractor()
        frameExtractor.delegate = self
    }
    
    func captured(image: UIImage) {
        imageView.image = image
        print("Captured an image")
    }
}

