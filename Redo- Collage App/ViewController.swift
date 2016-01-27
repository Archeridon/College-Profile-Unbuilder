//
//  ViewController.swift
//  Redo- Collage App
//
//  Created by Student on 1/26/16.
//  Copyright © 2016 Archeridon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var add: UIBarButtonItem!
    
    var college : [Colleges] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        add.tag = 0
      
        
    }
    

    @IBAction func onTap(sender: UIBarButtonItem) {
        
    }


}

