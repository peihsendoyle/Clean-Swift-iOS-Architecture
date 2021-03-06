//
//  ShowOrderPresenter.swift
//  CleanStore
//
//  Created by Hiep Nguyen on 3/10/16.
//  Copyright (c) 2016 Zyncas. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//

import UIKit

protocol ShowOrderPresenterInput
{
    func presentOrder(response: ShowOrder_GetOrder_Response)
    
}

protocol ShowOrderPresenterOutput: class
{
    func displaySomething(viewModel: ShowOrderViewModel)
    
    func displayOrder(viewModel: ShowOrder_GetOrder_ViewModel)
}

class ShowOrderPresenter: ShowOrderPresenterInput
{
    weak var output: ShowOrderPresenterOutput!
    
    // MARK: Presentation logic
    
    let dateFormatter : NSDateFormatter = {
        
        let dateFormatter = NSDateFormatter()
        
        dateFormatter.dateStyle = .ShortStyle
        
        dateFormatter.timeStyle = .NoStyle
        
        return dateFormatter
    }()
    
    let currencyFormatter : NSNumberFormatter = {
        
        let currencyFormatter = NSNumberFormatter()
        
        currencyFormatter.numberStyle = .CurrencyStyle
        
        return currencyFormatter
    }()
    
    func presentSomething(response: ShowOrderResponse)
    {
        // NOTE: Format the response from the Interactor and pass the result back to the View Controller
        
        let viewModel = ShowOrderViewModel()
        output.displaySomething(viewModel)
    }
    
    func presentOrder(response: ShowOrder_GetOrder_Response) {
        
        let order = response.order
        
        let date = dateFormatter.stringFromDate(order.date!)
        
        let total = currencyFormatter.stringFromNumber(order.total!)
        
        let displayedOrder = ShowOrder_GetOrder_ViewModel.DisplayedOrder(id: order.id!, date: date, email: order.email!, name: "\(order.firstName!) \(order.lastName!)", total: total!)
        
        let viewModel = ShowOrder_GetOrder_ViewModel(displayedOrder: displayedOrder)
        
        output.displayOrder(viewModel)
    }
}
