//
//  YesNoQuestion.swift
//  ThemesManagerDemo
//
//  Created by Kit Oster on 5/5/24.
//

import SwiftUI

struct YesNoQuestion: View {
    @EnvironmentObject private var themeManager: ThemeManager
    @State private var isYesSelected = false // Default value
    let question: String
    
    var body: some View {
        VStack {
            Toggle("Had flow?", isOn: $isYesSelected)
                .toggleStyle(SwitchToggleStyle(tint: .green)) // Adjust color as needed
                
            if isYesSelected {
                Text("You selected: Yes")
                    .foregroundColor(.green)
            } else {
                Text("You selected: No")
                    .foregroundColor(.red)
            }
        }
        .padding()
    }
}


struct YesNoQuestion_Previews: PreviewProvider {
    static var previews: some View {
        YesNoQuestion(question: "Had flow?")
        .environmentObject(ThemeManager())
    }
}
