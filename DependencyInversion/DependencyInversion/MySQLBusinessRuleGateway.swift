//
//  MySQLBusinessRuleGateway.swift
//  DependencyInversion
//
//  Created by Hiep Nguyen on 3/9/16.
//  Copyright © 2016 Zyncas. All rights reserved.
//

import Foundation

class MySQLBusinessRuleGateway: BusinessRuleGateWay {
    
    func startTransaction() {
        
        // start MySQL transaction
    }
    
    func getSomething(id: String) -> Something {
        
        // Use MySQL to get a thing
        
        let thing = Something()
        
        return thing
    }
    
    func saveSomething(thing: Something) {
        
        // Save thing to MySQL
    }
    
    func endTransaction() {
        
        // end MySQL transaction
    }
}
