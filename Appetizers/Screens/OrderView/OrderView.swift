//
//  OrderView.swift
//  Appetizers
//
//  Created by Ammar Ali on 5/25/21.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    List{
                        ForEach(order.items){ appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: { indexSet in
                            order.items.remove(atOffsets: indexSet)
                        })                }
                        
                    .listStyle(PlainListStyle())
                    
                    Button{
                        
                    } label: {
                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .padding(.bottom, 25)
                }
      
                if order.items.isEmpty{
                    EmptyState(imageName: "empty-order", message: "You have no appetizers in your order. \nPlease add an appetizer.")
                }
            }
            .navigationTitle("🧾 Orders")
        }
        
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
