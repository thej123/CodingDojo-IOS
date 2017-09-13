//
//  ViewController.swift
//  NESW
//
//  Created by Thej on 9/12/17.
//  Copyright © 2017 Thej. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBAction func directionButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "NSFW", sender: sender.titleLabel!.text!)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = sender as! String
        let controller = segue.destination as! DimissViewController
        controller.direction = destination
        
        
    }
    
    //@IBAction func toMainView(_ segue: UIStoryboardSegue) {
        
    //}

}

