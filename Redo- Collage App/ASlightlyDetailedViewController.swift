//
//  ASlightlyDetailedViewController.swift
//  Redo- Collage App
//
//  Created by Student on 2/5/16.
//  Copyright © 2016 Archeridon. All rights reserved.
//

import UIKit

class ASlightlyDetailedViewController: UIViewController {
    //Properly Named Things
    
    @IBOutlet weak var collegeTF: UITextField!

    @IBOutlet weak var studentTF: UITextField!
    
    @IBOutlet weak var stateTF: UITextField!
    
    @IBOutlet weak var viewImage: UIImageView!
    
    var college : Colleges!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    collegeTF.text = college.name
    studentTF.text = "\(college.students)"
    stateTF.text = college.state
    viewImage.image = college.image
        
        
       
    }

  
    @IBAction func tapSavePlz(sender: AnyObject) {
        
    }
    

    

}
