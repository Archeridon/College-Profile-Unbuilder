//
//  ViewController.swift
//  Redo- Collage App
//
//  Created by Student on 1/26/16.
//  Copyright © 2016 Archeridon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var editButton: UIBarButtonItem!
    
    var college : [Colleges] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        editButton.tag = 0
        
        college.append(Colleges(name: "Harper College", state: "Illinois", students: 8000, image: UIImage(named: "harper")!))
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return college.count
    }
    //----------------
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MyCell", forIndexPath: indexPath)
        cell.textLabel?.text = college[indexPath.row].name
        return cell
    }
    //----------------
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete
        {
            college.removeAtIndex(indexPath.row)
            tableView.reloadData()
        }
    }
    //----------------
    func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    
    }
    //----------------
    func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {
        let whatItis = college[sourceIndexPath.row]
        college.removeAtIndex(sourceIndexPath.row)
        college.insert(whatItis, atIndex: destinationIndexPath.row)
    }
    
    //----------------
    @IBAction func onTap(sender: UIBarButtonItem) {

        if sender.tag == 0 {
            tableView.editing = true
            sender.tag = 1
        }
        else
        {
            tableView.editing = false
            sender.tag = 0
        }

    }

    @IBAction func onTapAdd(sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "ADD", message: nil, preferredStyle: .Alert)
        alert.addTextFieldWithConfigurationHandler { (textFeild) -> Void in
            textFeild.placeholder = "Add it here!"
            let cancelAction = UIAlertAction(title: "Cancel?", style: .Cancel, handler: nil)
            let addAction = UIAlertAction(title: "Add", style: .Default, handler: { (action) -> Void in
                let collegeTextFeild = alert.textFields![0] as UITextField
                self.college.append(Colleges(name: collegeTextFeild.text!))
                self.tableView.reloadData()
            })
        }
    }

}

