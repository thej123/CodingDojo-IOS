//
//  ViewController.swift
//  Cold Call 1
//
//  Created by Thej on 9/7/17.
//  Copyright © 2017 Thej. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameTextLabel: UILabel!
    
    @IBOutlet weak var numberLabel: UILabel!
    var nameArr = ["Thej", "Havi", "Harshada", "Jaun", "Tanvi"]
    var track = 0
    var numTrack = 0
    
    @IBAction func coldCallButton(_ sender: UIButton) {
        let temp = track
        var index = Int(arc4random_uniform(5))
        track = index
        while index == temp {
            index = Int(arc4random_uniform(5))
            track = index
        }
        nameTextLabel.text = nameArr[index]
        
        numberLabel.isHidden = false
        let tempnum = numTrack
        var num = Int(arc4random_uniform(5)+1)
        numTrack = num
        while num == tempnum {
            num = Int(arc4random_uniform(5)+1)
            numTrack = num
        }
        numberLabel.text = String(num)
        if num == 1 || num == 2 {
            numberLabel.textColor = UIColor.red
        } else if num == 3 || num == 4 {
            numberLabel.textColor = UIColor.orange
        } else {
            numberLabel.textColor = UIColor.green
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextLabel.text = "ready?"
        numberLabel.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

