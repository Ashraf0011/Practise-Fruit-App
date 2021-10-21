//
//  FruitHeaderView.swift
//  Fruit-App
//
//  Created by Md Ashraful Islam on 18/10/21.
//

import SwiftUI

struct FruitHeaderView: View {
    // Properties
    var fruit: Fruit
    @State private var isAnimatingImage: Bool = false
    var body: some View {
        // Body
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .padding()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.5), radius: 8, x: 8, y: 8)
                .scaleEffect(isAnimatingImage ? 0.8 : 0.6)
        }// Zstack
        .frame(height: 440)
        .onAppear(){
            withAnimation(.easeInOut(duration: 0.5)){
                isAnimatingImage = true
            }
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
