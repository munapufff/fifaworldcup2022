//
//  ViewController.swift
//  finalwc2022
//
//  Created by Jirapat P on 28/11/2565 BE.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {

    var player: AVAudioPlayer?
    
    @IBAction func startBtn(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadaudio()
            
    }
    
    func loadaudio() {
        let path = Bundle.main.path(forResource: "hayya", ofType: "mp3")!
        let url = URL(filePath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
//            player?.play()
        } catch {
            print("error")
        }
    }
    
    
}





//        let mainID = storyboard?.instantiateViewController(withIdentifier: "mainview") as? ViewController
//        let menuID = storyboard?.instantiateViewController(withIdentifier: "menuview") as? menuVC
//        self.navigationController?.show(menuID!, sender: mainID!)
