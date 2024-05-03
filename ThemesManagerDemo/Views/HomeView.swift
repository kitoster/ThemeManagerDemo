//
//  HomeView.swift
//  ThemesManagerDemo
//
//  Created by Tharindu Ketipearachchi on 2023-12-14.
//
import SwiftUI

struct HomeView: View {
    @EnvironmentObject private var themeManager: ThemeManager

    var body: some View {
        VStack(spacing: 5) {
                   Collapsible(label: {
                       Text("Forecast")
                           .font(themeManager.selectedTheme.textTitleFont)
                           .foregroundColor(themeManager.selectedTheme.bodyTextColor)
                   }, content: {
                       Text("Start date projected for May 6.")
                           .font(themeManager.selectedTheme.bodyTextFont)
                   })
               }
            .padding()
            //.background(themeManager.selectedTheme.textBoxColor)
            .background(Color.clear) // Set the background color to transparent
            .cornerRadius(8)
            .border(themeManager.selectedTheme.primaryThemeColor, width: 1) // Set the border color and width
            
            Spacer()
        
        .padding(.top, 150.0)
        .edgesIgnoringSafeArea(.all)
        
        
    } //end body view
} //end home view

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ThemeManager())
    }
}
