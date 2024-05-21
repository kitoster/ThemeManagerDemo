//
//  SettingsView.swift
//  ThemesManagerDemo
//
//  Created by Kit Oster on 5/15/24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        Text("Settings")
            .padding()
        Spacer()
        ThemePickerView()
            .padding()
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
        .environmentObject(ThemeManager())
    }
}
