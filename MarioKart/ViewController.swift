//
//  ViewController.swift
//  MarioKart
//
//  Created by Caitlyn Chau on 3/10/19.
//  Copyright © 2019 Caitlyn Chau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func didPanKartView(_ sender: UIPanGestureRecognizer) {
        let location = sender.location(in: view)
        print("Location: x: \(location.x), y: \(location.y)")
        
        let kartView = sender.view!
        kartView.center = location
    }
    
    @IBAction func didPinchKartView(_ sender: UIPinchGestureRecognizer) {
        let scale = sender.scale
        print("scale: \(scale)")
        
        let kartView = sender.view!
        kartView.transform = CGAffineTransform(scaleX: scale, y: scale)
    }
    
    
}

