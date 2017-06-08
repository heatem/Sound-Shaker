//
//  ViewController.swift
//  Sound Shaker
//
//  Created by Heather Mason on 6/7/17.
//  Copyright © 2017 HApps. All rights reserved.
//  
//  Based on Sound Shaker app from Rob Percival's Udemy course: www.udemy.com/complete-ios-10-developer-course
//  Background image from unsplash.com/
//  Sounds from freesfx.com/

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if event?.subtype == UIEventSubtype.motionShake {
            
            let num = Int(arc4random_uniform(7) + 1)
            let audioPath = Bundle.main.path(forResource: "sound\(num)", ofType: "mp3")
            
            do {
                try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
            } catch {
                
            }
        }
        player.play()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

