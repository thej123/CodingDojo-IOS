//
//  FormTableViewController.swift
//  MadLibs
//
//  Created by Thej on 9/12/17.
//  Copyright © 2017 Thej. All rights reserved.
//

import UIKit

class FormTableViewController: UITableViewController {
    
    @IBOutlet weak var adjectiveLabel: UITextField!
    @IBOutlet weak var nounLabel: UITextField!
    @IBOutlet weak var verbLabel: UITextField!
    @IBOutlet weak var locationLabel: UITextField!
    
    weak var delegate: ProtocolForDelegate?
    
    @IBAction func submitButtonPressed(_ sender: UIButton) {
        var arr = [String]()
        arr.append(adjectiveLabel.text!)
        arr.append(nounLabel.text!)
        arr.append(verbLabel.text!)
        arr.append(locationLabel.text!)
        
        delegate?.saveItems(by: self, with: arr)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    /*override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }*/
}

    
