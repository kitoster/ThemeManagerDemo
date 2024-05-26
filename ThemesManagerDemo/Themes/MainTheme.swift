//
//  MainTheme.swift
//  ThemesManagerDemo
//
//  Created by Tharindu Ketipearachchi on 2023-12-14.
//
import SwiftUI
/**
 Main Theme
 */
struct MainTheme: ThemeProtocol {
    var id: UUID = UUID()
    let name = "Main"
    
    var largeTitleFont: Font = .custom("MartelSans-ExtraBold", size: 30.0)
    var textTitleFont: Font = .custom("MartelSans-ExtraBold", size: 22.0)
    var normalBtnTitleFont: Font = .custom("MartelSans-SemiBold", size: 20.0)
    var boldBtnTitleFont: Font = .custom("MartelSans-Bold", size: 20.0)
    var bodyTextFont: Font = .custom("MartelSans-Light", size: 18.0)
    var captionTxtFont: Font = .custom("MartelSans-SemiBold", size: 20.0)
    let imageName = "mainImage" // Example image name

    
    var primaryThemeColor: Color { return Color("mnPrimaryThemeColor") }
    var secondoryThemeColor: Color { return Color("mnSecondoryThemeColor") }
    var affirmBtnTitleColor: Color { return Color("mnAffirmBtnTitleColor") }
    var negativeBtnTitleColor: Color { return Color("mnNegativeBtnTitleColor") }
    var bodyTextColor: Color { return Color("mnBodyTextColor") }
    var textBoxColor: Color { return Color("mnTextBoxColor") }
}
