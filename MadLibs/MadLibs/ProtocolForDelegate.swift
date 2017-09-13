//
//  ProtocolForDelegate.swift
//  MadLibs
//
//  Created by Thej on 9/12/17.
//  Copyright © 2017 Thej. All rights reserved.
//

import UIKit

protocol ProtocolForDelegate: class {
    func saveItems(by controller: FormTableViewController, with text: [String])
}
