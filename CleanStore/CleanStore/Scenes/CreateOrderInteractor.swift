//
//  CreateOrderInteractor.swift
//  CleanStore
//
//  Created by Hiep Nguyen on 2/28/16.
//  Copyright (c) 2016 Zyncas. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//

import UIKit

protocol CreateOrderInteractorInput
{
    func doSomething(request: CreateOrderRequest)
    
    var shippingMethods : [String] { get }
    
    func formatExpirationDate(request: CreateOrder_FormatExpirationDate_Request)
}

protocol CreateOrderInteractorOutput
{
    func presentSomething(response: CreateOrderResponse)
    
    func presentExpirationDate (response: CreateOrder_FormatExpirationDate_Response)
}

class CreateOrderInteractor: CreateOrderInteractorInput {
    
    var output: CreateOrderInteractorOutput!
    
    var worker: CreateOrderWorker!
    
    // MARK: Shipping methods
    
    var shippingMethods = ["Standard Shipping", "2-day Shipping", "1-day Shipping"]
    
    // MARK: Business logic
    
    func doSomething(request: CreateOrderRequest)
    {
        // NOTE: Create some Worker to do the work
        
        worker = CreateOrderWorker()
        worker.doSomeWork()
        
        // NOTE: Pass the result to the Presenter
        
        let response = CreateOrderResponse()
        output.presentSomething(response)
    }
    
    // MARK: Expiration date
    
    func formatExpirationDate(request: CreateOrder_FormatExpirationDate_Request) {
        
        let response = CreateOrder_FormatExpirationDate_Response(date: request.date)
        
        output.presentExpirationDate(response)
    }
}