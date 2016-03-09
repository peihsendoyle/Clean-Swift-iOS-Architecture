//
//  FootballPlayerModel.swift
//  TableViewRefactoring
//
//  Created by Hiep Nguyen on 3/9/16.
//  Copyright © 2016 Zyncas. All rights reserved.
//

import Foundation
import UIKit

// Method 1: DataSource inside ViewController

struct FootballPlayerDataStore {
    
    private let players = ["Lionel Messi", "Cristiano Ronaldo", "Ricardo Kaka", "Roberto Carlos", "Angel Di Maria"]
    
    func allPlayers() -> [String] {
        
        return players
    }
}

// Method 2: DataSource is a different class

class FootballPlayerDataSource: NSObject, UITableViewDataSource {
    
    let dataSource = FootballPlayerDataStore()
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return dataSource.allPlayers().count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let player = dataSource.allPlayers()[indexPath.row]
        
        let cell = tableView.dequeueReusableCellWithIdentifier("FootballPlayerCell", forIndexPath: indexPath)
        
        cell.textLabel?.text = player
        
        return cell
    }
}

// Method 3: DataSource inside a Swift Extension

extension FootballViewControllerMethod3 {
    
    var dataStore : FootballPlayerDataStore {
        
        return FootballPlayerDataStore()
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















