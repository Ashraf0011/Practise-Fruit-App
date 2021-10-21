//
//  OnboardingView.swift
//  Fruit-App
//
//  Created by Md Ashraful Islam on 17/10/21.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
    // MARK: PRoperties
        let fruitsArray: [Fruit] = fruitsData
    // MARK: Body
        TabView {
            ForEach(fruitsArray[0...2]){ item in
                FruitCardView(fruit: item)
            }//:forEach
        }//:Tab
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 5)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
