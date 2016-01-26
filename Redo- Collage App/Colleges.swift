//
//  Colleges.swift
//  Redo- Collage App
//
//  Created by Student on 1/26/16.
//  Copyright © 2016 Archeridon. All rights reserved.
//

import UIKit

class Colleges: NSObject {
    var name = " "
    var state = " "
    var students = 0
    var image = UIImage(named: "Default")
    convenience init(name: String, state: String, students: Int, image: UIImage) {
        self.init()
        self.name = name
        self.state = state
        self.students = students
        self.image = image
    }
    convenience init(name: String) {
        self.init()
        self.name = name
    }

}
