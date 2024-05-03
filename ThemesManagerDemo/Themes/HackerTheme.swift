//
//  AsianTheme.swift
//  ThemesManagerDemo
//
//  Created by Tharindu Ketipearachchi on 2023-12-14.
//
import SwiftUI
/**
 Asian Theme
 */
struct Hacker: ThemeProtocol {
    var largeTitleFont: Font = .custom("Menlo", size: 30.0)
    var textTitleFont: Font = .custom("Menlo", size: 20.0)
    var normalBtnTitleFont: Font = .custom("Menlo", size: 20.0)
    var boldBtnTitleFont: Font = .custom("Menlo", size: 20.0)
    var bodyTextFont: Font = .custom("Menlo", size: 18.0)
    var captionTxtFont: Font = .custom("Menlo", size: 20.0)
    
    var primaryThemeColor: Color { return Color("asPrimaryThemeColor") }
    var secondoryThemeColor: Color { return Color("asSecondoryThemeColor") }
    var affirmBtnTitleColor: Color { return Color("asAffirmBtnTitleColor") }
    var negativeBtnTitleColor: Color { return Color("asNegativeBtnTitleColor") }
    var bodyTextColor: Color { return Color("asBodyTextColor") }
    var textBoxColor: Color { return Color("asTextBoxColor") }
}
