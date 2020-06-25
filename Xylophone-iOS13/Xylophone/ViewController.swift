//
//  ViewController.swift
//  Xylophone project for udemy
//
//  Created by Angela Yu on 28/06/2019.
//This assignment was completed by Abdul Mateen Ahmad Khan for udemy course. Thanks a lot
//  Copyright © 2019 The App Brewery. All rights reserved.
//
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(soundName: sender.currentTitle!)
        sender.alpha=0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1.0
            
        }
    }
    func playSound(soundName:String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
