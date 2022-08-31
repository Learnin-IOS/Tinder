//
//  MessageListVM.swift
//  BuildTinder
//
//  Created by Le Bon B' Bauma on 30/08/2022.
//

import Foundation


class MessageListVM: ObservableObject{
    
    @Published var messagePreviews: [MessagePreview] = []
    
    init() {
        loadPreviews()
    }
    
    func loadPreviews(){
        // Handle networking to load messagePreviews from a Server
        self.messagePreviews = MessagePreview.examples
    }
}
