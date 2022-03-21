//
//  Order.swift
//  Appetizers
//
//  Created by Ammar Ali on 5/31/21.
//

import SwiftUI

final class Order: ObservableObject {
    
    @Published var items: [Appetizer] = []
    
    var totalPrice: Double {
        items.reduce(0){ $0 + $1.price }
    }
    
    func add(_ appetizer: Appetizer){
        items.append(appetizer)
    }
}
