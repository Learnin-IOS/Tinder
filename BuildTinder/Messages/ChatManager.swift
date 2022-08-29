//
//  ChatManager.swift
//  BuildTinder
//
//  Created by Le Bon B' Bauma on 29/08/2022.
//

import Foundation
import Combine
import UIKit

class ChatManager: ObservableObject {
    @Published var messages:[Message] = []
    @Published var keyboardIsShowing: Bool  = false
    
    
    var cancellable: AnyCancellable? = nil  
    private var person: Person
    
    init(person: Person){
        self.person = person
        loadMessages()
        setupPublishers()
    }
    
    
    public func sendMessage(_ message: Message) {
            // Networking Call
        messages.append(message)
        // if networking failure show error with some retry options
    }
    
    private let keyboardWillShow = NotificationCenter.default
        .publisher(for: UIResponder.keyboardWillShowNotification)
        .map({_ in true })
    
    private let keybardWillHide = NotificationCenter.default
        .publisher(for: UIResponder.keyboardWillHideNotification)
        .map({_ in false })
    
    private func setupPublishers() {
        cancellable = Publishers.Merge(keyboardWillShow, keybardWillHide)
            .subscribe(on: DispatchQueue.main)
            .assign(to: \.keyboardIsShowing, on: self)
        
    }
    
    private func loadMessages(){
          messages = [Message.exampleSent, Message.exampleRecieved]
    }
    
    deinit {
        cancellable?.cancel()
    }
}
