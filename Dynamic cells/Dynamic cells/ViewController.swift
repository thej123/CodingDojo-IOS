//
//  ViewController.swift
//  Dynamic cells
//
//  Created by Thej on 9/11/17.
//  Copyright © 2017 Thej. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    var tasks = ["George", "Betty", "Fran", "Joe", "Helda", "Winifred", "Zed", "Sara", "Jeffy", "Abraham", "Anna", "Melinda"]
    
    var ages: [Int] = [Int]()
    
    
    @IBAction func beastButtonPressed(_ sender: UIButton) {
        
        
        if let text = taskTextField.text {
            if text != "" {
                tasks.append(text)
                taskTextField.text = ""
                tableView.reloadData()
            }
        }
        
    }
    
    func randomGenerator(num: Int) -> [Int] {
        var arr = [Int]()
        for _ in 0...num {
            let temp = Int(arc4random_uniform(100))
            arr.append(temp)
        }
        return arr
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Section:\(indexPath.section) and Row: \(indexPath.row)")
        tasks.remove(at: indexPath.row)
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        ages = randomGenerator(num: tasks.count)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        //let cell2 = tableView.dequeueReusableCell(withIdentifier: "MyNumber", for: indexPath)
        cell.textLabel?.text = tasks[indexPath.row]
        cell.detailTextLabel?.text = String(ages[indexPath.row]) + " Years old"
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
}
 
