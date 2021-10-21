//
//  SettingsLabelView.swift
//  Fruit-App
//
//  Created by Md Ashraful Islam on 21/10/21.
//

import SwiftUI

struct SettingsLabelView: View {
    // properties
    var labelText: String
    var labelImage: String
    
    //body
    var body: some View {
        HStack {
            let extractedExpr = Text(labelText.uppercased())
            extractedExpr.fontWeight(.bold)
        Spacer()
        Image(systemName: labelImage)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
