//
//  FruitListView.swift
//  Fruit-App
//
//  Created by Md Ashraful Islam on 18/10/21.
//

import SwiftUI

struct FruilListItem: View {
    var fruit: Fruit  // this fruit var is call in the list view
    var body: some View {
        HStack {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0), radius: 3, x: 2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing))
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 5){
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            }//vstack
        }//hstack
        .frame(height: 90, alignment: .leading)
    }
}

struct FruitListItemView_Previews: PreviewProvider {
    static var previews: some View {
        FruilListItem(fruit: fruitsData[0]).previewLayout(.sizeThatFits).padding(16)
    }
}
