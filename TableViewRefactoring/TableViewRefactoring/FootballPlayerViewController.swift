//
//  FootballPlayerViewController.swift
//  TableViewRefactoring
//
//  Created by Hiep Nguyen on 3/9/16.
//  Copyright © 2016 Zyncas. All rights reserved.
//

import Foundation
import UIKit

class FootballPlayerViewControllerMethod1: UITableViewController {
    
    let dataStore = FootballPlayerDataStore()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return dataStore.allPlayers().count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let player = dataStore.allPlayers()[indexPath.row]
        
        let cell = tableView.dequeueReusableCellWithIdentifier("FootballPlayerCell", forIndexPath: indexPath)
        
        cell.textLabel?.text = player
        
        return cell
    }
}

class FootballViewControllerMethod2: UITableViewController {
    
    let dataSource = FootballPlayerDataSource()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        tableView.dataSource = dataSource
    }
}

class FootballViewControllerMethod3: UITableViewController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
}