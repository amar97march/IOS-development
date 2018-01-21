//
//  ViewController.swift
//  Xylophone
//
//  Created by Amar Singh on 12/26/17.
//  Copyright © 2017 Amar Singh. All rights reserved.
//

import UIKit
import AVFoundation
import AudioToolbox
class ViewController: UIViewController {
    
    let arrayTones = ["note1","note2","note3","note4","note5","note6","note7","note8","note9","note10","note11","note12"]
    var player : AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func notePressed(_ sender: UIButton) {
        
        notePlayed(sender.tag)
        
        
        
    }
    func notePlayed(_ tagNo : Int){
        let noteVar = arrayTones[tagNo - 1]
        
        let url = Bundle.main.url(forResource: noteVar , withExtension: "wav" )!
        
        do{
            player = try AVAudioPlayer (contentsOf: url)
            
            player.play()
        }catch {
            print("File not found.")
        }
        
    }

}
