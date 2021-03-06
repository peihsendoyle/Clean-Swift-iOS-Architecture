//
//  CreateOrderPresenter.swift
//  CleanStore
//
//  Created by Hiep Nguyen on 2/28/16.
//  Copyright (c) 2016 Zyncas. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//

import UIKit

protocol CreateOrderPresenterInput
{
//    func presentSomething(response: CreateOrderResponse)
    
    func presentExpirationDate(response: CreateOrder_FormatExpirationDate_Response)
}

protocol CreateOrderPresenterOutput: class
{
//    func displaySomething(viewModel: CreateOrderViewModel)
    
    func displayExpirationDate(viewModel: CreateOrder_FormatExpirationDate_ViewModel)
}

class CreateOrderPresenter: CreateOrderPresenterInput {
    
    weak var output: CreateOrderPresenterOutput!
    
    let dateFormatter : NSDateFormatter = {
        
        let dateFormatter = NSDateFormatter()
        
        dateFormatter.dateStyle = .ShortStyle
        
        dateFormatter.timeStyle = .NoStyle
        
        return dateFormatter
    }()
    
    // MARK: Presentation logic
    
//    func presentSomething(response: CreateOrderResponse)
//    {
//        // NOTE: Format the response from the Interactor and pass the result back to the View Controller
//        
//        let viewModel = CreateOrderViewModel()
//        output.displaySomething(viewModel)
//    }
    
    // MARK: Expiration date
    func presentExpirationDate(response: CreateOrder_FormatExpirationDate_Response) {
        
        let date = dateFormatter.stringFromDate(response.date)
        
        let viewModel = CreateOrder_FormatExpirationDate_ViewModel(date: date)
        
        output.displayExpirationDate(viewModel)
    }
}
