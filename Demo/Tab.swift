//
//  Tab.swift
//  Demo
//
//  Created by Erik Madsen on 7/12/17.
//  Copyright © 2017 Erik Madsen. All rights reserved.
//

import UIKit

class Tab: UIViewController {
    
    var bgColor: UIColor!
    
    convenience init(color: UIColor) {
        self.init()
        bgColor = color
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = bgColor
    }
    
}
