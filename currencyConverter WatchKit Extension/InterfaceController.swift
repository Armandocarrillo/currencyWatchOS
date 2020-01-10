//
//  InterfaceController.swift
//  currencyConverter WatchKit Extension
//
//  Created by Armando Carrillo on 09/01/20.
//  Copyright © 2020 Armando Carrillo. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var amountLabel: WKInterfaceLabel!
    @IBOutlet var amountSlider: WKInterfaceSlider!
    @IBOutlet var currencyPicker: WKInterfacePicker!
    static let currencies = ["USD", "AUD", "CAD", "CHF", "CNY", "EUR", "GBP", "HKD", "JPY", "SGD"]//opciones para picker
    static let defaultCurrencies = ["USD", "EUR"]
    var currentCurrency = "USD"
    var currentAmount = 500
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        var items = [WKPickerItem]()//metodo para llamar al picker *//
        for currency in InterfaceController.currencies { let item = WKPickerItem()
        item.title = currency
        items.append(item)
        }
        currencyPicker.setItems(items)//*
        
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func convertTapped() {
    }
    
    @IBAction func amountChanged(_ value: Float) {
        currentAmount = Int(value) //convvierte el valor de float a int
        amountLabel.setText(String(currentAmount))//muestra el valor currentAmount conertido en string en amountLabel
    }
    
    @IBAction func baseCurrencyChanged(_ value: Int) {
         currentCurrency = InterfaceController.currencies[value]//
    }
    
}
