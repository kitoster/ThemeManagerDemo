//
//  BottomToolbarView.swift
//  ThemesManagerDemo
//
//  Created by Kit Oster on 5/8/24.
//

import SwiftUI

struct BottomToolbar: View {
    @EnvironmentObject private var themeManager: ThemeManager
    var body: some View {
        HStack {
            Spacer()
            Button(action: {
                // Action for the first button
            }) {
                Image(systemName: "square.and.arrow.up")
                    .padding()
            }
            Spacer()
            Button(action: {
                // Action for the second button
            }) {
                Image(systemName: "house.fill")
                    .padding()
            }
            Spacer()
            Button(action: {
                // Action for the third button
            }) {
                Image(systemName: "gear")
                    .padding()
            }
            Spacer()
        }
        .background(Color.clear) // Set the background color to clear
        .foregroundColor(themeManager.selectedTheme.primaryThemeColor) // Adjust the color as needed
        .padding() // Add padding to the toolbar
    }
}

struct BottomToolbar_Previews: PreviewProvider {
    static var previews: some View {
        BottomToolbar()
            .environmentObject(ThemeManager())
            .previewLayout(.fixed(width: 400, height: 80)) // Adjust preview layout as needed
    }
}
