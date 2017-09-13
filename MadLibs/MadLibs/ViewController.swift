//
//  ViewController.swift
//  MadLibs
//
//  Created by Thej on 9/12/17.
//  Copyright © 2017 Thej. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ProtocolForDelegate {
    
    @IBOutlet weak var updateLabel: UITextField!
    
    var sentence = ""
    
    
    func saveItems(by controller: FormTableViewController, with text: [String]) {
        
        
        sentence = "We are having a perfectly \(text[0]) time now. Later we will \(text[1]) and \(text[2]) in the \(text[3])"
        updateLabel.text = sentence
        dismiss(animated: true, completion: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let controller = segue.destination as! FormTableViewController
            controller.delegate = self
        }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

