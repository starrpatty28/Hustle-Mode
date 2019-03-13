//
//  ViewController.swift
//  Hustle-Mode
//
//  Created by Alicia Livingston on 3/13/19.
//  Copyright © 2019 Alicia Livingston. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    // This is making a connection between interface and code
    @IBOutlet var darkBlueBG: UIImageView!
    @IBOutlet var powerBtn: UIButton!
    @IBOutlet var cloudHolder: UIView!
    @IBOutlet var rocket: UIImageView!
    @IBOutlet var hustleLBL: UILabel!
    @IBOutlet var onLBL: UILabel!
    
    // Create a Player that will actually play music
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Went and got the Path for the wavw/sound file and loaded it into the player
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do  {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
    }
    
    // When the Pwr Btn is pressed its hidden w/bckgrnd but cloudholder shows
    @IBAction func powerBtnPressed(_ sender: Any) {
        cloudHolder.isHidden = false
        darkBlueBG.isHidden = true
        powerBtn.isHidden = true
        
        // Play the sound effects
        player.play()
        
        
        // While the music is playing move the rocket up the screen for 2.3 seconds
        UIView.animate(withDuration: 2.3, animations: {
            self.rocket.frame = CGRect(x: 0, y: 20, width: 375, height: 151)
            
        }) { (finished) in
            self.hustleLBL.isHidden = false
            self.onLBL.isHidden = false
            
        }
    }
    

}

