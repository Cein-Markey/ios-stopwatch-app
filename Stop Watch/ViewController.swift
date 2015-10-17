//
//  ViewController.swift
//  Stop Watch
//
//  Created by Cein Markey on 9/20/15.
//  Copyright © 2015 Cein Markey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var timerText: UILabel!
    
    var timeObject = NSTimer()
    
    var time = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func playButton(sender: AnyObject) {
        timeObject = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTime"), userInfo: nil, repeats: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func resetButton(sender: AnyObject) {
        timeObject.invalidate()
        time = 0
        timerText.text = "\(time)"
    }
    
    @IBAction func pauseButton(sender: AnyObject) {
        timeObject.invalidate()
    }
    
    func increaseTime() {
        time++
        timerText.text = "\(time)"
    }
    
}

