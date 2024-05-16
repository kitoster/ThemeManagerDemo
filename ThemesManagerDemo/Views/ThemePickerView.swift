//
//  ThemePickerView.swift
//  ThemesManagerDemo
//
//  Created by Kit Oster on 5/16/24.
//

import SwiftUI

struct ThemePickerView: View {
    @EnvironmentObject private var themeManager: ThemeManager
    
    var body: some View {
        VStack {
            Text("Select a Theme")
            
            // Display theme options as buttons or a list
            ForEach(themeManager.themes, id: \.id) { theme in
                Button(action: {
                    themeManager.chooseTheme(theme)
                }) {
                    Text(theme.name)
                }
            }
        }
    }
}


struct ThemePickerView_Previews: PreviewProvider {
    static var previews: some View {
        ThemePickerView()
        .environmentObject(ThemeManager())
    }
}
