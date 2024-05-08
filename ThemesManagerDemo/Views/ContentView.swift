//
//  ContentView.swift
//  ThemesManagerDemo
//
//  Created by Tharindu Ketipearachchi on 2023-12-13.
//
import SwiftUI

struct ContentView: View {
    @StateObject var themeManager = ThemeManager()

    var body: some View {
        TabView {
            NavigationView {
                HomeView()
                    .environmentObject(themeManager)
            }
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }
            
            NavigationView {
                AnalysisView()
                    .environmentObject(themeManager)
            }
            .tabItem {
                Image(systemName: "gear")
                Text("Analysis")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
