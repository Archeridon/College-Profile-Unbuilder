//
//  ViewController.swift
//  Redo- Collage App
//
//  Created by Student on 1/26/16.
//  Copyright © 2016 Archeridon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var add: UIBarButtonItem!
    
    var college : [Colleges] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        add.tag = 0
        college.append(Colleges(name: "Harper College", state: "Illinois", students: 8000, image: UIImage(named: "harper")!))
        
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return college.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MyCell", forIndexPath: indexPath)
        cell.textLabel?.text = college[indexPath.row].name
        return cell
    }
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete
        {
            college.removeAtIndex(indexPath)
        }
    }
    

    @IBAction func onTap(sender: UIBarButtonItem) {
        
    }


}

