//
//  SettingsRowView.swift
//  Fruit-App
//
//  Created by Md Ashraful Islam on 21/10/21.
//

import SwiftUI

struct SettingsRowView: View {
    // PROPERTIES
    var rowName: String
    var rowDetails: String? = nil
    var rowLinkLabel: String? = nil
    var rowLinkDestinition: String? = nil
    
    //BODY
    var body: some View {
        HStack {
            Text(rowName)
                .fontWeight(.medium)
              
        Spacer()
            if (rowDetails != nil) {
                Text(rowDetails!).fontWeight(.light)
            } else if(rowLinkLabel != nil && rowLinkDestinition != nil){
                Link(rowLinkLabel!, destination: URL(string:"https://\(rowLinkDestinition!)")!)
                Image(systemName: "arrow.up.right.square").foregroundColor(.accentColor)
            } else {
                EmptyView()
            }
        }
        .foregroundColor(.gray)
        .padding(8)
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            // reg text
            SettingsRowView(rowName: "Dev", rowDetails: "Ash")
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.light)
            // link
            SettingsRowView(rowName: "Website", rowLinkLabel: "ashrafs.info", rowLinkDestinition: "ashrafs.info")
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.light)
        }
    }
}
