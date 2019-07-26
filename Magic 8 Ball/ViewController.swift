//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Daryus on 2019-07-26.
//  Copyright © 2019 Daryus Lung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var balls: [UIImage] = [UIImage(named: "ball1")!, UIImage(named: "ball2")!, UIImage(named: "ball3")!, UIImage(named: "ball4")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var changeBall: UIImageView!
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        let number = Int.random(in: 0 ... 3)
        
        changeBall.image = balls[number]
    }

}

