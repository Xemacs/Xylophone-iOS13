//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player =  AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(keyName: sender.currentTitle!)
        sender.alpha = 1;
    }
    
    @IBAction func cKeyPressed(_ sender: UIButton) {
        sender.alpha = 0.4;
    }
    
    func playSound(keyName: String) {
        let soundUrl = Bundle.main.path(forResource: keyName, ofType: "wav")
        do {
            player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundUrl!))
            player.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
}
