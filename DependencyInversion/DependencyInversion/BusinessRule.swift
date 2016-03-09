//
//  BusinessRule.swift
//  DependencyInversion
//
//  Created by Hiep Nguyen on 3/9/16.
//  Copyright © 2016 Zyncas. All rights reserved.
//

import Foundation

protocol BusinessRuleGateWay {
    
    func getSomething(id: String) -> Something
    
    func startTransaction()
    
    func saveSomething(thing: Something)
    
    func endTransaction()
}

class BusinessRule {
    
    private var gateway: BusinessRuleGateWay
    
    init(gateway: BusinessRuleGateWay) {
        
        self.gateway = gateway
    }
    
    func execute(id: String) {
        
        gateway.startTransaction()
        
        let thing = gateway.getSomething(id)
        
        thing.makeChanges()
        
        gateway.saveSomething(thing)
        
        gateway.endTransaction()
    }
}
