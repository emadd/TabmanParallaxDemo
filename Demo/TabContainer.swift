//
//  TabContainer.swift
//  Demo
//
//  Created by Erik Madsen on 7/12/17.
//  Copyright © 2017 Erik Madsen. All rights reserved.
//

import Foundation
import Tabman
import Pageboy

class TabContainer: TabmanViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
    }
    
}

extension TabContainer: PageboyViewControllerDataSource {
    
    func viewControllers(forPageboyViewController pageboyViewController: PageboyViewController) -> [UIViewController]? {
        // return array of view controllers
        let viewControllers = [Tab(color: UIColor.gray), Tab(color: UIColor.darkGray)]
        
        // configure the bar
        self.bar.items = [Item(title: "Page 1"),
                          Item(title: "Page 2")]
        
        return viewControllers
    }
    
    func defaultPageIndex(forPageboyViewController pageboyViewController: PageboyViewController) -> PageboyViewController.PageIndex? {
        // use default index
        return nil
    }
    
}
