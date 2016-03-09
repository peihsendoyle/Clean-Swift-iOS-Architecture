//
//  ViewController.swift
//  DependencyInversion
//
//  Created by Hiep Nguyen on 3/9/16.
//  Copyright © 2016 Zyncas. All rights reserved.
//

import Foundation
import UIKit

class ViewController :  UIViewController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let parseService = ParseService()
        
        let sender = Sender(service: ParseService())
        
    }
}
