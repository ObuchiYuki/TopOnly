//
//  ViewController.swift
//  BottomOnly
//
//  Created by yuki on 2022/02/21.
//

import UIKit
import AVKit
import AVFAudio

class ViewController: UIViewController {
    @IBAction func slider(_ sender: UISlider) {
        player.pan = sender.value
    }
    
    let url = Bundle.main.url(forResource: "sample", withExtension: "m4a")!
    lazy var player = try! AVAudioPlayer(contentsOf: url)
    
    @IBAction func play(_ sender: Any) {
        player.play()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player.prepareToPlay()
        player.pan = 1
    }
}

