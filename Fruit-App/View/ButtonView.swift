//
//  ButtonView.swift
//  Fruit-App
//
//  Created by Md Ashraful Islam on 17/10/21.
//

import SwiftUI

struct ButtonView: View {
    @AppStorage("inOnboarding") var isOnboarding:Bool?
    var body: some View {
        Button(action:{
            isOnboarding = false
        }) {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        }//:Button
        .accentColor(Color.white)
        
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
            .previewLayout(.sizeThatFits)
    }
}
