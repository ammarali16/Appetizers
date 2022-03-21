//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Ammar Ali on 5/25/21.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
     var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
