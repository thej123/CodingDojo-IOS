//
//  ViewController.swift
//  TTT
//
//  Created by Thej on 9/7/17.
//  Copyright © 2017 Thej. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var pos = 0

    @IBAction func box1(_ sender: UIButton) {
        if !(sender.backgroundColor == UIColor.red || sender.backgroundColor == UIColor.blue) {
            if pos == 0 {
                sender.backgroundColor = UIColor.red
                pos = 1
            } else if pos == 1 {
                sender.backgroundColor = UIColor.blue
                pos = 0
            }
        }
        winner()
    }
    @IBAction func box2(_ sender: UIButton) {
        if !(sender.backgroundColor == UIColor.red || sender.backgroundColor == UIColor.blue) {
            if pos == 0 {
                sender.backgroundColor = UIColor.red
                pos = 1
            } else if pos == 1 {
                sender.backgroundColor = UIColor.blue
                pos = 0
            }
        }
        winner()
    }
    @IBAction func box3(_ sender: UIButton) {
        if !(sender.backgroundColor == UIColor.red || sender.backgroundColor == UIColor.blue) {
            if pos == 0 {
                sender.backgroundColor = UIColor.red
                pos = 1
            } else if pos == 1 {
                sender.backgroundColor = UIColor.blue
                pos = 0
            }
        }
        winner()
    }
    @IBAction func box4(_ sender: UIButton) {
        if !(sender.backgroundColor == UIColor.red || sender.backgroundColor == UIColor.blue) {
            if pos == 0 {
                sender.backgroundColor = UIColor.red
                pos = 1
            } else if pos == 1 {
                sender.backgroundColor = UIColor.blue
                pos = 0
            }
        }
        winner()
    }
    @IBAction func box5(_ sender: UIButton) {
        if !(sender.backgroundColor == UIColor.red || sender.backgroundColor == UIColor.blue) {
            if pos == 0 {
                sender.backgroundColor = UIColor.red
                pos = 1
            } else if pos == 1 {
                sender.backgroundColor = UIColor.blue
                pos = 0
            }
        }
        winner()
    }
    @IBAction func box6(_ sender: UIButton) {
        if !(sender.backgroundColor == UIColor.red || sender.backgroundColor == UIColor.blue) {
            if pos == 0 {
                sender.backgroundColor = UIColor.red
                pos = 1
            } else if pos == 1 {
                sender.backgroundColor = UIColor.blue
                pos = 0
            }
        }
        winner()
    }
    @IBAction func box7(_ sender: UIButton) {
        if !(sender.backgroundColor == UIColor.red || sender.backgroundColor == UIColor.blue) {
            if pos == 0 {
                sender.backgroundColor = UIColor.red
                pos = 1
            } else if pos == 1 {
                sender.backgroundColor = UIColor.blue
                pos = 0
            }
        }
        winner()
    }
    @IBAction func box8(_ sender: UIButton) {
        if !(sender.backgroundColor == UIColor.red || sender.backgroundColor == UIColor.blue) {
            if pos == 0 {
                sender.backgroundColor = UIColor.red
                pos = 1
            } else if pos == 1 {
                sender.backgroundColor = UIColor.blue
                pos = 0
            }
        }
        winner()
    }
    @IBAction func box9(_ sender: UIButton) {
        if !(sender.backgroundColor == UIColor.red || sender.backgroundColor == UIColor.blue) {
            if pos == 0 {
                sender.backgroundColor = UIColor.red
                pos = 1
            } else if pos == 1 {
                sender.backgroundColor = UIColor.blue
                pos = 0
            }
        }
        winner()
    }
    
    @IBOutlet weak var box1info: UIButton!
    @IBOutlet weak var box2Info: UIButton!
    @IBOutlet weak var box3info: UIButton!
    @IBOutlet weak var box4info: UIButton!
    @IBOutlet weak var box5info: UIButton!
    @IBOutlet weak var box6info: UIButton!
    @IBOutlet weak var box7info: UIButton!
    @IBOutlet weak var box8info: UIButton!
    @IBOutlet weak var box9info: UIButton!
 
    @IBAction func reset(_ sender: UIButton) {
        box1info.backgroundColor = UIColor.gray
        box2Info.backgroundColor = UIColor.gray
        box3info.backgroundColor = UIColor.gray
        box4info.backgroundColor = UIColor.gray
        box5info.backgroundColor = UIColor.gray
        box6info.backgroundColor = UIColor.gray
        box7info.backgroundColor = UIColor.gray
        box8info.backgroundColor = UIColor.gray
        box9info.backgroundColor = UIColor.gray
        pos = 0
        winnerLabel.text = "Lets Play!"
    }
    
    @IBOutlet weak var winnerLabel: UILabel!
    
    func winner() {
        if (box1info.backgroundColor == UIColor.red && box2Info.backgroundColor == UIColor.red && box3info.backgroundColor == UIColor.red) {
            winnerLabel.text = " Red wins"
            pos = 2
        }
        else if (box4info.backgroundColor == UIColor.red && box5info.backgroundColor == UIColor.red && box6info.backgroundColor == UIColor.red) {
            winnerLabel.text = " Red wins"
            pos = 2
        }
        else if (box7info.backgroundColor == UIColor.red && box8info.backgroundColor == UIColor.red && box9info.backgroundColor == UIColor.red) {
            winnerLabel.text = " Red wins"
            pos = 2
        }
        else if (box1info.backgroundColor == UIColor.red && box4info.backgroundColor == UIColor.red && box7info.backgroundColor == UIColor.red) {
            winnerLabel.text = " Red wins"
            pos = 2
        }
        else if (box2Info.backgroundColor == UIColor.red && box5info.backgroundColor == UIColor.red && box8info.backgroundColor == UIColor.red) {
            winnerLabel.text = " Red wins"
            pos = 2
        }
        else if (box3info.backgroundColor == UIColor.red && box6info.backgroundColor == UIColor.red && box9info.backgroundColor == UIColor.red) {
            winnerLabel.text = " Red wins"
            pos = 2
        }
        else if (box1info.backgroundColor == UIColor.red && box5info.backgroundColor == UIColor.red && box9info.backgroundColor == UIColor.red) {
            winnerLabel.text = " Red wins"
            pos = 2
        }
        else if (box3info.backgroundColor == UIColor.red && box5info.backgroundColor == UIColor.red && box7info.backgroundColor == UIColor.red) {
            winnerLabel.text = " Red wins"
            pos = 2
        }
        else if (box1info.backgroundColor == UIColor.blue && box2Info.backgroundColor == UIColor.blue && box3info.backgroundColor == UIColor.blue) {
            winnerLabel.text = " Blue wins"
            pos = 2
        }
        else if (box4info.backgroundColor == UIColor.blue && box5info.backgroundColor == UIColor.blue && box6info.backgroundColor == UIColor.blue) {
            winnerLabel.text = " Blue wins"
            pos = 2
        }
        else if (box7info.backgroundColor == UIColor.blue && box8info.backgroundColor == UIColor.blue && box9info.backgroundColor == UIColor.blue) {
            winnerLabel.text = " Blue wins"
            pos = 2
        }
        else if (box1info.backgroundColor == UIColor.blue && box4info.backgroundColor == UIColor.blue && box7info.backgroundColor == UIColor.blue) {
            winnerLabel.text = " Blue wins"
            pos = 2
        }
        else if (box2Info.backgroundColor == UIColor.blue && box5info.backgroundColor == UIColor.blue && box8info.backgroundColor == UIColor.blue) {
            winnerLabel.text = " Blue wins"
            pos = 2
        }
        else if (box3info.backgroundColor == UIColor.blue && box6info.backgroundColor == UIColor.blue && box9info.backgroundColor == UIColor.blue) {
            winnerLabel.text = " Blue wins"
            pos = 2
        }
        else if (box1info.backgroundColor == UIColor.blue && box5info.backgroundColor == UIColor.blue && box9info.backgroundColor == UIColor.blue) {
            winnerLabel.text = " Blue wins"
            pos = 2
        }
        else if (box3info.backgroundColor == UIColor.blue && box5info.backgroundColor == UIColor.blue && box7info.backgroundColor == UIColor.blue) {
            winnerLabel.text = " Blue wins"
            pos = 2
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // box1info.backgroundColor = UIColor.blue
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

