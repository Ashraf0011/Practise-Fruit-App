//
//  FruitCardView.swift
//  Fruit-App
//
//  Created by Md Ashraful Islam on 17/10/21.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: PRPPERTIES
    var fruit: Fruit
    
    @State private var isAnimating: Bool = false
        
    //  MARK: BODY
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // Furit: Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 10, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
               
                // Fruit: Title
                Text(fruit.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.23), radius: 2, x: 4, y: 4)
               
                //Fruit: Headline
                Text(fruit.headline)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                    .frame(maxWidth: 480)
                    .padding(.horizontal,16)
               
                //BUTTON: START
                ButtonView()
            }//:VStack
        } //:ZStack
        .onAppear{
//            withAnimation(.spring(response: 0.4, dampingFraction: 0.6, blendDuration: 0.4)) {
//                isAnimating = true
//            }
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20.0)
        .padding(20)
  
    }
}

// MARK: PREVIEW
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[1])
    }
}
