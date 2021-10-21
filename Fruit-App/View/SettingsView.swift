//
//  SettingsView.swift
//  Fruit-App
//
//  Created by Md Ashraful Islam on 20/10/21.
//

import SwiftUI

struct SettingsView: View {
    
    // Properties
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("inOnboarding") var isOnboarding: Bool = false
    
    
    // Body
    /// <#Description#>
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    // SECTION 1
                    GroupBox(label:
                                SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider()
                            .padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(6.0)
                            Text("Blueberries are perennial flowering plants with blue or purple berries. They are classified Vaccinium.")
                        }
                    }
                    
                    
                    // SECTION 2
                    GroupBox(label:
                                SettingsLabelView(labelText: "Customization",
                                                 labelImage: "paintbrush")
                    ){
                        Divider()
                            .padding(.vertical, 4)
                            Text("Reset appilication to it's initial state. To do so Simply tap on the switch icon.")
                            .padding(.vertical,8)
                            .font(.footnote)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .multilineTextAlignment(.leading)
                        
                        
            

                        
                        Toggle(isOn:$isOnboarding){
                            if isOnboarding {
                                withAnimation(){
                                    Text("Researted".uppercased())
                                        .foregroundColor(.green)
                                        .fontWeight(.bold)
                                }
                            } else {
                                Text("Researt".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.gray)
                                    
                            }
                        }.padding()
                            .background(
                                Color(UIColor.tertiarySystemBackground)
                                    .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                            )
                
                        
                    }
                    
                    
                    
                    
                    // SECTION 3
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ){
                        Divider().padding(.vertical, 4)
                        SettingsRowView(rowName: "Developer", rowDetails: "Ashraful / Islam")
                        SettingsRowView(rowName: "Version", rowDetails: "1.5")
                        SettingsRowView(rowName: "Compatibility", rowDetails: "iOS 15")
                        SettingsRowView(rowName: "Social Media", rowDetails: "twitter")
                        SettingsRowView(rowName: "Website", rowLinkLabel: "ashrafs.info", rowLinkDestinition: "ashrafs.info")
                    }
                    
                }//:vstack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                           Image(systemName: "xmark")
                        })
                    }
                }//:toolbar
                .padding()
            }//:scroll
        }//:nav
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
