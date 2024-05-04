//
//  CustomDatePicker.swift
//  ThemesManagerDemo
//
//  Created by Kit Oster on 5/3/24.
//

import SwiftUI

struct CustomDatePicker: View {
    @Binding var selectedDate: Date
    
    var body: some View {
        DatePicker("Select a Date", selection: $selectedDate, displayedComponents: .date)
            .datePickerStyle(WheelDatePickerStyle())
            .labelsHidden()
            .frame(width: 100, height: 100) // Adjust size as needed
            .padding(20)
    }
}
