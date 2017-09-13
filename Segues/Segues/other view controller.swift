//
//  other view controller.swift
//  Segues
//
//  Created by Thej on 9/11/17.
//  Copyright © 2017 Thej. All rights reserved.
//

import UIKit

class other_view_controller: UIViewController {
    
    
    @IBOutlet weak var outoutLabel: UILabel!
    var output: String?
    
    
    
    @IBAction func dismissButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        outoutLabel.text = output
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    
}
