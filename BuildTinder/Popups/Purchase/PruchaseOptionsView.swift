//
//  PruchaseOptionsView.swift
//  BuildTinder
//
//  Created by Le Bon B' Bauma on 12/09/2022.
//

import SwiftUI

struct PruchaseOptionsView: View {
    var sub: Subscription
    var isSelected: Bool
    var body: some View {
        VStack( spacing: 0) {
            Text("\(sub.month)")
                .font(.system(size: 44, weight: .light))
            
            Spacer().frame(height: 2)
            
            Text("month\(sub.month > 1 ? "s" : "")")
                .if(isSelected) {
                    $0.font(.system(size: 14, weight: .bold))
                    
                }
            Spacer().frame(height: 2)
            
            // Formatting Currencies
            Text("$\(String(format: "%.2f", sub.montlyCost))/mo")
                .foregroundColor(.textPrimary)
            
            Spacer().frame(height: 10)
            
            if sub.savePercent != nil {
                Text("SAVE \(sub.savePercent ??  0)%")
                    .foregroundColor(.yellow)
                    .font(.system(size: 16, weight: .heavy))
                    .frame(height: 22)
            } else {
                Spacer().frame(height: 22)
            }
            
            Spacer().frame(height: 12)
            
            Text("$\(String(format: "%.2f", sub.totalCost))")
                .font(.system(size: 20, weight: .bold))
            
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 18)
        .if(!isSelected) {
            $0.foregroundColor(Color.textPrimary)
        }
        .if(isSelected && sub.tagLine == .none) {
            $0.overlay(
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .stroke(Color.yellow, lineWidth: 1.5)
            )
        }
        .if(isSelected && sub.tagLine != .none) {
            $0.overlay(
                ZStack(alignment: .top) {
                    Rectangle()
                        .foregroundColor(.yellow)
                        .frame(height:20)
                        .cornerRadius(10, corners: [.topLeft, .topRight])
                        
                    Text("\(sub.tagLine.rawValue)")
                        .font(.system(size: 12, weight: .bold))
                        .foregroundColor(.white)
                        .lineLimit(1)
                        .padding(.top, 3)
                        .padding(.horizontal, 6)
                        .minimumScaleFactor(0.1)
                    
                    
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .stroke(Color.yellow, lineWidth: 1.5)
                    
                }
            )
        }
    }
}

struct PruchaseOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        HStack{
            PruchaseOptionsView(sub: Subscription.example1, isSelected: true)
            PruchaseOptionsView(sub: Subscription.example2, isSelected: true)
            PruchaseOptionsView(sub: Subscription.example3, isSelected: true)
        }
    }
}
