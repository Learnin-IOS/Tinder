//
//  MessageView.swift
//  BuildTinder
//
//  Created by Le Bon B' Bauma on 29/08/2022.
//

import SwiftUI

struct MessageView: View {
    var message: Message
    
    var body: some View {
        HStack {
            if message.fromCurrentUser {
                Spacer()
            }
            Text(message.content)
                .padding(10)
                .foregroundColor(.white)
                .background(message.fromCurrentUser ? Color.blue : Color.gray)
                .cornerRadius(10, corners: [.topRight, .bottomLeft])
            
            if !message.fromCurrentUser {
                Spacer()
            }
        }
        .padding()
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(message: Message.exampleRecieved )
    }
}
