//
//  ChatView.swift
//  BuildTinder
//
//  Created by Le Bon B' Bauma on 29/08/2022.
//

import SwiftUI

struct ChatView: View {
    @ObservedObject var chatMng: ChatManager
    private var person: Person
    
    init(person: Person){
        self.person = person
        self.chatMng = ChatManager(person: person)
    }
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            LazyVStack{
                ForEach(chatMng.messages.indices, id: \.self) { index in
                    let msg = chatMng.messages[index]
                    MessageView(message: msg)
                }
            }
        })
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(person: Person.example)
    }
}
