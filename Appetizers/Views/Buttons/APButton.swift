//
//  APButton.swift
//  Appetizers
//
//  Created by Ammar Ali on 5/28/21.
//

import SwiftUI

struct APButton: View {
    
    var title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50, alignment: .center)
            .background(Color.brandPrimary)
            .foregroundColor(Color.white)
            .cornerRadius(12)
    }
}

struct APButton_Previews: PreviewProvider {
    static var previews: some View {
        APButton(title: "Test Title")
    }
}
