//
//  PurchasePopup.swift
//  BuildTinder
//
//  Created by Le Bon B' Bauma on 12/09/2022.
//

import SwiftUI

struct PurchasePopup: View {
    @Binding var isVisible:  Bool
    
    let screen = UIScreen.main.bounds
    
    func processPayment (){
         
    }
    var body: some View {
        GeometryReader { geo in
            VStack {
                
                Spacer().frame(height: 40 )
                VStack {
                    Text("Get tinder plus")
                        .foregroundColor(.yellow)
                        .font(.system(size: 24, weight: .bold))
                    
                    Text("PurchaseSwipePromo")
                        .frame(height: geo.size.height / 3)
                        .background(.gray)
                    
                    
                    Text("3 purchase options")
                    
                    Spacer()
                    
                    Button(action: { processPayment() }, label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 45)
                                .foregroundColor(.yellow)
                            Text("CONTINUE")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .heavy))
                        }
                    })
                    .frame(height: 55)
                    .padding(.horizontal, 24)
                    .padding(.top, 12)
                    
                    Button(action: { isVisible = false}, label: {
                        Text("NO THANKS")
                            .foregroundColor(.textPrimary)
                            .font(.system(size: 20, weight: .heavy))
                            .padding(.vertical, 18)
                        
                    })
                }
                .frame(width: geo.size.width)
                .padding(.vertical, 20)
                .background(
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .foregroundColor(.white)
                
            )
                Spacer()
                VStack(spacing: 4) {
                    
                    Text("Reuccuring billing, cancel anytime.")
                        .foregroundColor(.white)
                        .font(.system(size: 14, weight: .semibold))
                    
                    Text("This is a bunch of example text that is representing the legal found on all subcription pages. Out of respect to the original application we will not be copying over their legaltext word for word here.")
                        .foregroundColor(Color.white.opacity(0.5))
                        .font(.system(size: 14, weight: .semibold))
                        .multilineTextAlignment(.center)
                    
                }
                .padding(.bottom, 20)
                .padding(.horizontal, 4)
                
                Spacer()
            }
            .background(Color.black.edgesIgnoringSafeArea(.all))
        }
        .frame(height: screen.height  )
    }
}

struct PurchasePopup_Previews: PreviewProvider {
    static var previews: some View {
        PurchasePopup(isVisible: .constant(true))
    }
}
