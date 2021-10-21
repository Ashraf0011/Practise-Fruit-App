//
//  FruitNutrientsView.swift
//  Fruit-App
//
//  Created by Md Ashraful Islam on 19/10/21.
//

import SwiftUI

struct FruitNutrientsView: View {
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar","Fat",  "Protin", "Vitamin", "Minerals"]
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutrational Value per 100g"){
                ForEach(0..<nutrients.count, id:\.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }.foregroundColor(fruit.gradientColors[1])
                        
                        Spacer(minLength: 20)
                        Text(fruit.nutration[item])
                            .multilineTextAlignment(.trailing)
                            
                    }
                }
                
            }
        } //:box
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 480))
            .preferredColorScheme(.dark)
            .padding()
    }
}
