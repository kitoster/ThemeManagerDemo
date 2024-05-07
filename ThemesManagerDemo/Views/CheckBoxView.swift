//
//  CheckBoxView.swift
//  ThemesManagerDemo
//
//  Created by Kit Oster on 5/6/24.
//

import SwiftUI

struct CheckBoxView: View {
    @EnvironmentObject private var themeManager: ThemeManager
    var title: String
    @Binding var isChecked: Bool
    
    var body: some View {
        HStack {
            Text(title)
                .foregroundColor(themeManager.selectedTheme.primaryThemeColor)
                .font(.body)
            Spacer()
            Image(systemName: isChecked ? "checkmark.square.fill" : "square")
                .resizable()
                .frame(width: 22, height: 22)
                .foregroundColor(.blue)
                .onTapGesture {
                    isChecked.toggle()
                }
        }
        .padding(.vertical, 5)
        .padding(.horizontal, 20)
    }
}

struct CheckBoxView_Previews: PreviewProvider {
    static var previews: some View {
        CheckBoxView(title: "Example Checkbox", isChecked: .constant(false))
        .environmentObject(ThemeManager())
    }
}
