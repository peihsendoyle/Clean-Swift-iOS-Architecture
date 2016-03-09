//
//  SpecificReceiver.swift
//  DependencyInversion
//
//  Created by Hiep Nguyen on 3/9/16.
//  Copyright © 2016 Zyncas. All rights reserved.
//

import Foundation

class ParseService: Service {
    
    override func fetchUserWithId(id: String, completionHandler: (user: NSObject?, error: ErrorType?) -> ()) {
        
        // Do the fetch
        // Map PFOject into User
        // Invoke completionHandler
    }
}