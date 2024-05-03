//
//  ThemesManagerDemoApp.swift
//  ThemesManagerDemo
//
//  Created by Tharindu Ketipearachchi on 2023-12-13.
//

import SwiftUI

@main
struct ThemesManagerDemoApp: App {
    
    let themeManager = ThemeManager() //added to resolve error
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(themeManager) //added to resolve error
        }
    }
}
