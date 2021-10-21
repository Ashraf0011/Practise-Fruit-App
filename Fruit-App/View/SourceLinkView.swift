//
//  SourceLinkView.swift
//  Fruit-App
//
//  Created by Md Ashraful Islam on 18/10/21.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox(){
            HStack{
                Text("content Source")
                Spacer()
                Link("Wiki", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
                    .font(.footnote)
            }
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
