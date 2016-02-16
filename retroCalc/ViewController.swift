//
//  ViewController.swift
//  retroCalc
//
//  Created by Anthony Adams on 2/15/16.
//  Copyright © 2016 betaTech, LLC. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    enum Operation: String {
        case Divide = "/"
        case Multiply = "*"
        case Subtract = "-"
        case Add = "+"
        case Equals = "="
        case Empty = "Empty"
    }
    
    
    var btnSound: AVAudioPlayer!
    
    var runningNumber = ""
    var leftValStr = ""
    var rightValStr = ""
    var currentOperation: Operation = Operation.Empty
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadSoundPlayer()
        
    }
    
    // IBOutlets
    @IBOutlet var outputLabel: UILabel!
    
    // IBActions
    @IBAction func numberPressed(btn: UIButton!) {
        btnSound.play()
        
        runningNumber += "\(btn.tag)"
        outputLabel.text = runningNumber
    }
    
    @IBAction func onDividePressed(sender: UIButton!) {
        
    }
    
    @IBAction func onMultiplyPressed(sender: UIButton!) {
        
    }
    
    @IBAction func onSubtractPressed(sender: UIButton!) {
        
    }
    
    @IBAction func onAddPressed(sender: UIButton!) {
        
    }
    
    @IBAction func onEqualPressed(sender: UIButton!) {
        
    }
    
    // Functions (Methods)
    func loadSoundPlayer() {
        let path = NSBundle.mainBundle().pathForResource("btn", ofType: "wav")
        let soundUrl = NSURL(fileURLWithPath: path!)
        
        do {
            try btnSound = AVAudioPlayer(contentsOfURL: soundUrl)
            btnSound.prepareToPlay()
        } catch let err as NSError {
            print(err.debugDescription)
        }
    }

}

