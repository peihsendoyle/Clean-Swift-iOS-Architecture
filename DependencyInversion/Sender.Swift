//
//  Sender.Swift
//  DependencyInversion
//
//  Created by Hiep Nguyen on 3/9/16.
//  Copyright © 2016 Zyncas. All rights reserved.
//

import Foundation

// DEPENDENCY INVERSION CODE FORM

//protocol Receiver {
//    
//    func receiveThis()
//}
//
//class Sender {
//    
//    private var receiver: Receiver
//    
//    init(receiver: Receiver) {
//        
//        self.receiver = receiver
//    }
//    
//    func doSomething() {
//        
//        receiver.receiveThis()
//    }
//}

// DEPENDENCY INVERSION ADAPTION

class Service {
    
    func fetchUserWithId(id: String, completionHandler: (user: NSObject?, error: ErrorType?) -> ()) {
        
    }
}

class Sender {
    
    private var service : Service
    
    init(service: Service) {
        
        self.service = service
    }
    
    func doSomething() {
        
        service.fetchUserWithId("testUser") { (user: NSObject?, error: ErrorType?) in
            
            // Do something here
        }
    }
}