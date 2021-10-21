//
//  Fruit_AppApp.swift
//  Fruit-App
//
//  Created by Md Ashraful Islam on 17/10/21.
//

import SwiftUI

@main
struct Fruit_AppApp: App {
    @AppStorage("inOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            }else{
                FruitListView()
//                SettingsView()
            }
            
        }
    }
}
