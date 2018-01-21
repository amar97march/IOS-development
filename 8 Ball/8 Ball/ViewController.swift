//
//  ViewController.swift
//  8 Ball
//
//  Created by Amar Singh on 12/25/17.
//  Copyright © 2017 Amar Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let arrayImages = ["ball1","ball2","ball3","ball4","ball5"]
    
    @IBOutlet weak var crystalimage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressedButton(_ sender: UIButton) {
        imagechange()
        
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        imagechange()
    }
    func imagechange(){
    var randInt = Int (arc4random_uniform(5))
    crystalimage.image = UIImage(named: arrayImages[randInt])
    }
}

