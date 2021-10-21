//
//  FruitDetailView.swift
//  Fruit-App
//
//  Created by Md Ashraful Islam on 18/10/21.
//

import SwiftUI

struct FruitDetailView: View {
    var fruit: Fruit

    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false){
                VStack (alignment:.center){
                    // Header
                    FruitHeaderView(fruit: fruit)
                    VStack (alignment: .leading, spacing: 20.0){
                        // Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        // Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        // SubHeadline
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        // Nutration
                        FruitNutrientsView(fruit: fruit)
                        // Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        // Link
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                        
                        
                    }//:vstack
                    .padding(.horizontal,20)
                    .frame(maxWidth: 640, alignment:.center)
                }//:vstack
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }//:scroll
            .edgesIgnoringSafeArea(.top)
            
        }//:nav
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
