//
//  ViewControllerHome.swift
//  PostureCheck
//
//  Created by Steven M. on 3/1/23.
//

import UIKit
import AVFoundation

// creating the vars to play the different sounds

var cymb1Player = AVAudioPlayer()
var cymb2Player = AVAudioPlayer()
var cymb3Player = AVAudioPlayer()
var drum1Player = AVAudioPlayer()
var drum2Player = AVAudioPlayer()
var drum3Player = AVAudioPlayer()
var drum4Player = AVAudioPlayer()
var drum5Player = AVAudioPlayer()

class ViewControllerHome: UIViewController {

    @IBOutlet weak var frontname: UILabel!
    @IBOutlet weak var namefield: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // where I will call all of my paths to the drum sounds
        
        let cymb_1Sound = Bundle.main.path(forResource: "sounds/cymb_1", ofType: "wav")
        
        let cymb_2Sound = Bundle.main.path(forResource: "sounds/cymb_2", ofType: "wav")
        
        let cymb_3Sound = Bundle.main.path(forResource: "sounds/cymb_3", ofType: "wav")
        
        let drum_1Sound = Bundle.main.path(forResource: "sounds/drum_1", ofType: "wav")
        
        let drum_2Sound = Bundle.main.path(forResource: "sounds/drum_2", ofType: "wav")
        
        let drum_3Sound = Bundle.main.path(forResource: "sounds/drum_3", ofType: "wav")
        
        let drum_4Sound = Bundle.main.path(forResource: "sounds/drum_4", ofType: "wav")
        
        let drum_5Sound = Bundle.main.path(forResource: "sounds/drum_5", ofType: "wav")
        
        // where I will call all of my drum sounds to be able to be played
        
        do {
            cymb1Player = try
            AVAudioPlayer(contentsOf: URL(fileURLWithPath: cymb_1Sound!))
            cymb1Player.prepareToPlay()
            print("playing...")
        } catch {
            print(error)
        }
        
        do {
            cymb2Player = try
            AVAudioPlayer(contentsOf: URL(fileURLWithPath: cymb_2Sound!))
            cymb2Player.prepareToPlay()
            print("playing...")
        } catch {
            print(error)
        }
        
        do {
            cymb3Player = try
            AVAudioPlayer(contentsOf: URL(fileURLWithPath: cymb_3Sound!))
            cymb3Player.prepareToPlay()
            print("playing...")
        } catch {
            print(error)
        }
        
        do {
            drum1Player = try
            AVAudioPlayer(contentsOf: URL(fileURLWithPath: drum_1Sound!))
            drum1Player.prepareToPlay()
            print("playing...")
        } catch {
            print(error)
        }
        
        do {
            drum2Player = try
            AVAudioPlayer(contentsOf: URL(fileURLWithPath: drum_2Sound!))
            drum2Player.prepareToPlay()
            print("playing...")
        } catch {
            print(error)
        }
        
        do {
            drum3Player = try
            AVAudioPlayer(contentsOf: URL(fileURLWithPath: drum_3Sound!))
            drum3Player.prepareToPlay()
            print("playing...")
        } catch {
            print(error)
        }
        
        do {
            drum4Player = try
            AVAudioPlayer(contentsOf: URL(fileURLWithPath: drum_4Sound!))
            drum4Player.prepareToPlay()
            print("playing...")
        } catch {
            print(error)
        }
        
        do {
            drum5Player = try
            AVAudioPlayer(contentsOf: URL(fileURLWithPath: drum_5Sound!))
            drum5Player.prepareToPlay()
            print("playing...")
        } catch {
            print(error)
        }
        
    }
        // Additional setup for drum functions after loading the initial view
     
    @IBAction func toggleCymb_1(_ sender: Any) {
        cymb1Player.play()
    }

    @IBAction func toggleCymb_3(_ sender: Any) {
        cymb3Player.play()
    }
    
    @IBAction func toggleCymb_2(_ sender: Any) {
        cymb2Player.play()
    }
    
    @IBAction func toggleDrum_1(_ sender: Any) {
        drum1Player.play()
    }
    
    @IBAction func toggleDrum_2(_ sender: Any) {
        drum2Player.play()
    }
    
    @IBAction func toggleDrum_3(_ sender: Any) {
        drum3Player.play()
    }
    
    @IBAction func toggleDrum_4(_ sender: Any) {
        drum4Player.play()
    }
    
    @IBAction func toggleDrum_5(_ sender: Any) {
        drum5Player.play()
    }
    
    
    @IBAction func namebutton(_ sender: Any) {
        frontname.text = namefield.text
    }
    
    // to close the keyboard when the user taps off it
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    // to limit the amount of text a user can put in the field
    
    func namefield(_ textField: UITextField) {
        namefield.text = String(namefield.text!.prefix(10))
    }
    
}
