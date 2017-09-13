//
//  DimissViewController.swift
//  NESW
//
//  Created by Thej on 9/12/17.
//  Copyright © 2017 Thej. All rights reserved.
//

import UIKit

class DimissViewController: UIViewController {
    
    
    @IBAction func dismissButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var gobackbutton: UIButton!
    
    var direction: String?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        gobackbutton.setTitle(direction, for: .normal)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
