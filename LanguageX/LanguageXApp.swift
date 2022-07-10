//
//  LanguageXApp.swift
//  LanguageX
//
//  Created by LiJiao on 2022/07/04.
//

import SwiftUI

@main
struct LanguageXApp: App {
    
    @StateObject private var modelData = ModelData()
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
            .environmentObject(modelData)        }
    }
}
