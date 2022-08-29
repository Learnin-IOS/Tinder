//
//  ChatView.swift
//  BuildTinder
//
//  Created by Le Bon B' Bauma on 29/08/2022.
//

import SwiftUI

struct ChatView: View {
    @ObservedObject var chatMng: ChatManager
    @State private var typingMessage: String = ""
    
    private var person: Person
    
    init(person: Person){
        self.person = person
        self.chatMng = ChatManager(person: person)
    }
    var body: some View {
        ZStack (alignment: .top){
            VStack {
                Spacer()
                    .frame(height: 60)
                ScrollView(.vertical, showsIndicators: false, content: {
                    LazyVStack{
                        ForEach(chatMng.messages.indices, id: \.self) { index in
                            let msg = chatMng.messages[index]
                            MessageView(message: msg)
                        }
                    }
                })
                ZStack(alignment: .trailing) {
                    Color.texttfieldBG
                    TextField("Type a message", text: $typingMessage)
                        .foregroundColor(Color.textPrimary)
                        .textFieldStyle(PlainTextFieldStyle())
                        .frame(height: 45)
                        .padding(.horizontal)
                    Button(action: { sendMessage() }, label: {
                        Text("Send")
                    })
                    .padding(.horizontal)
                    .foregroundColor(typingMessage.isEmpty ? Color.textPrimary : Color.blue )
                }
                .frame(height: 40)
                .cornerRadius(20)
                .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                    )
                .padding(.horizontal)
                .padding(.bottom)
                
            }
            ChatViewHeader(
                name: person.name,
                imageURL: person.imagesURLS.first) {
                    // Video Action
                }
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
    
    func sendMessage() {
        chatMng.sendMessage(Message(content: typingMessage))
        typingMessage = ""
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(person: Person.example)
    }
}
