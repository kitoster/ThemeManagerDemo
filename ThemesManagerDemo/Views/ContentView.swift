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
        NavigationView {
            VStack {
                HomeView()
                    .environmentObject(themeManager)
                    .navigationBarTitle("Shark")
            }
            .overlay(BottomToolbar(), alignment: .bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
