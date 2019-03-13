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
    
    @IBOutlet var darkBlueBG: UIImageView!
    @IBOutlet var powerBtn: UIButton!
    @IBOutlet var cloudHolder: UIView!
    @IBOutlet var rocket: UIImageView!
    @IBOutlet var hustleLBL: UILabel!
    @IBOutlet var onLBL: UILabel!
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func powerBtnPressed(_ sender: Any) {
        cloudHolder.isHidden = false
        darkBlueBG.isHidden = true
        powerBtn.isHidden = true    
    }
    

}

