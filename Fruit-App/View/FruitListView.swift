//
//  FruitListView.swift
//  Fruit-App
//
//  Created by Md Ashraful Islam on 18/10/21.
//

import SwiftUI

struct FruitListView: View {
    @State private var isShowingSettings: Bool = false
    var fruits: [Fruit] = fruitsData
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits) { item in
                    NavigationLink( destination: FruitDetailView(fruit: item)){
                        FruilListItem(fruit: item)  // fruit is called from listItem                        
                    }
                }
            }
            .navigationTitle("Fruit List")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        isShowingSettings = true
                    }, label: {
                        Image(systemName: "slider.horizontal.3")
                    })//:button
                        .sheet(isPresented: $isShowingSettings){
                            SettingsView()
                        }
                }
            }
        }// navigation
        .navigationViewStyle(StackNavigationViewStyle())
      
    }
}

struct FruitListView_Previews: PreviewProvider {
    static var previews: some View {
        FruitListView(fruits: fruitsData)
    }
}
