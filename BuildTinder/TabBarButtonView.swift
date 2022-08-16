//
//  TabBarButtonView.swift
//  BuildTinder
//
//  Created by Le Bon B' Bauma on 16/08/2022.
//

import SwiftUI

enum TabBarButtonType: String {
    case fire = "flame.fill"
    case star = "star.fill"
    case message = "message.fill"
    case profile = "person.fill"
}

struct TabBarButtonView: View {
    
    var type: TabBarButtonType
    var action: () -> Void
    var body: some View {
        Button { action() } label: {
            Image(systemName: type.rawValue)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color.gray.opacity(0.5))
        }
        .frame(height: 32)
    }
}
struct TabBarButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarButtonView(type: .profile){
            print("Test")
        }
    }
}
