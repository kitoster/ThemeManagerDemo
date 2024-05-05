//
//  AddtoLog.swift
//  ThemesManagerDemo
//
//  Created by Kit Oster on 5/3/24.
//

import SwiftUI
import Foundation
import SwiftUI

struct AddtoLog: View {
    @EnvironmentObject private var themeManager: ThemeManager
    @State private var selectedDate = Date()
    @State private var isSelectedColor = false // Default value for radio button
    @State private var isDoneTapped = false
    
    var body: some View {
        VStack {
            Text("Selected Date: \(formattedDate)")
                .padding(.bottom, 50) // Add padding beneath the text
                .font(themeManager.selectedTheme.bodyTextFont)
                .foregroundColor(themeManager.selectedTheme.primaryThemeColor)
            // Date Picker
            CustomDatePicker(selectedDate: $selectedDate)
            
            RadioButton(label: "Selected Color", isSelected: $isSelectedColor)
            
            // Symptoms text
           Text("x")
                .padding(.bottom, 10)
            Text("Question 3")
                .padding(.bottom, 10)
            Text("Question 3")
                .padding(.bottom, 10)
            Text("Question 3")
                .padding(.bottom, 10)
            // Done Button
            Button(action: {
                isDoneTapped = true // Example action, you can handle it as needed
            }) {
                Text("Done")
                    .font(themeManager.selectedTheme.textTitleFont)
                    .foregroundColor(themeManager.selectedTheme.primaryThemeColor)
                    .padding()
                    .background(Color.clear)
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(themeManager.selectedTheme.primaryThemeColor, lineWidth: 1)
                    )
            }
            .padding(.bottom, 20)
            
        }
        .padding()
        //below is for debug
        .onAppear {
                    // Print the value of isSelectedColor when the view appears
                    print("isSelectedColor: \(isSelectedColor)")
                }
    }
    private var formattedDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM dd, yyyy"
        return dateFormatter.string(from: selectedDate)
    }
 
}

struct RadioButton: View {
    let label: String
    @Binding var isSelected: Bool
    
    var body: some View {
        Button(action: {
            isSelected.toggle() // Toggle the isSelected state when tapped
        }) {
            HStack {
                Image(systemName: isSelected ? "largecircle.fill.circle" : "circle")
                    .resizable()
                    .frame(width: 22, height: 22) // Adjust size as needed
                    .foregroundColor(isSelected ? .blue : .gray)
                Text(label)
            }
        }
    }
}



struct AddtoLog_Previews: PreviewProvider {
    static var previews: some View {
        AddtoLog()
        .environmentObject(ThemeManager())
    }
}
