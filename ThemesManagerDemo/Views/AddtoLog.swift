//
//  AddtoLog.swift
//  ThemesManagerDemo
//
//  Created by Kit Oster on 5/3/24.
//

import SwiftUI
import Foundation

struct AddtoLog: View {
    @EnvironmentObject private var themeManager: ThemeManager
    @State private var isDoneTapped = false
    var body: some View {
        VStack {
            Text("Today, \(formattedDate)")
                .foregroundColor(themeManager.selectedTheme.primaryThemeColor)
                .background(Color.clear)
                //Here I'll add a border with a color that's clear in dark mode but not in other modes.
                .padding(.vertical, 20)
                .font(themeManager.selectedTheme.textTitleFont)
            
            //For symptoms I'd love to have a mood option as well.
            ScrollView {
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi.")
                        .padding()
            }
            .background(Color.clear)
            .border(Color.blue, width: 1)
            .frame(height: 400)
        
        }
        .padding()
    }
}

private var formattedDate: String {
       let dateFormatter = DateFormatter()
       dateFormatter.dateFormat = "MMMM dd, yyyy" // Customize the date format as needed
       return dateFormatter.string(from: Date())
   }

struct AddtoLog_Previews: PreviewProvider {
    static var previews: some View {
        AddtoLog()
        .environmentObject(ThemeManager())
    }
}
