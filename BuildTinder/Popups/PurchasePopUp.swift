//
//  PurchasePopup.swift
//  BuildTinder
//
//  Created by Le Bon B' Bauma on 12/09/2022.
//

import SwiftUI

struct PurchasePopup: View {
    var body: some View {
        VStack {
            Text("Get tinder plus")
                .foregroundColor(.yellow)
                .font(.system(size: 24, weight: .bold))
            
            Text("PurchaseSwipePromo")
            
            Text("3 purchase options")
            
            Text("Continue")
            
            Text("No Thanks")
        }
    }
}

struct PurchasePopup_Previews: PreviewProvider {
    static var previews: some View {
        PurchasePopup()
    }
}
