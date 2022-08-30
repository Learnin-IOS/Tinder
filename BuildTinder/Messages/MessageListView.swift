//
//  MessageListView.swift
//  BuildTinder
//
//  Created by Le Bon B' Bauma on 30/08/2022.
//

import SwiftUI

struct MessageListView: View {
    @ObservedObject var vm: MessageListVM = MessageListVM()
    
    @State private var searchText: String = ""
    @State private var isEdititing: Bool = false
    
    
    var body: some View {
        VStack {
            HStack {
                TextField("Search Matches", text: $searchText)
                    .padding(7)
                    .padding(.horizontal, 25)
                    .background(Color.texttfieldBG)
                    .cornerRadius(8)
                    .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.textPrimary)
                            .font(.system(size: 20, weight:.bold))
                            .padding(.leading, 4)
                        
                        Spacer()
                    }
                )
                .padding(.horizontal, 10)
                .onTapGesture {
                    self.isEdititing = true
                }
                .animation(.easeIn(duration: 0.25))
                
                if isEdititing{
                Button(action: {
                    self.isEdititing = false
                    self.searchText = ""
//                    self.endEdititng(true)  " was deprecated in iOS 15 "
                    UIApplication.shared.endEditing()
                }, label: {
                    Text("Cancel")
                })
                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
                .animation(.easeIn(duration: 0.25))
                }
            }
            Spacer()
        }
    }
}

struct MessageListView_Previews: PreviewProvider {
    static var previews: some View {
        MessageListView()
    }
}
