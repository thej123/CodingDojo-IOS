//
//  ViewController.swift
//  Rainbow Road
//
//  Created by Thej on 9/11/17.
//  Copyright © 2017 Thej. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    let MinHeight: CGFloat = 100.0
    
    var color = [UIColor.red, UIColor.orange, UIColor.yellow, UIColor.green, UIColor.blue, UIColor.purple]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProtoCell", for: indexPath)
        cell.backgroundColor? = self.color[indexPath.row]
        return cell
    }
    
    /*let MinHeight: CGFloat = 100.0
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        let tHeight = tableView.bounds.height
        
        let temp = tHeight/CGFloat(color.count)
        
        return temp > MinHeight ? temp : MinHeight
    }*/
}


