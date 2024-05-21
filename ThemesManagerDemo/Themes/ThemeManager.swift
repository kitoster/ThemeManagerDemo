
//Themes: Hacker, Usa, Shark, Arcade
//More theme ideas: Bugs from Katie, Dinosaurs from Riley :) 

import SwiftUI
/**
 Theme Manager
 */
import SwiftUI

class ThemeManager: ObservableObject {
    // Define available theme options
    var themes: [ThemeProtocol] = [Hacker(), MainTheme(), UsaTheme()]
    
    // Selected theme
    @Published var selectedTheme: ThemeProtocol = Hacker()
    
    // Function to set the theme
    func setTheme(_ theme: ThemeProtocol) {
        selectedTheme = theme
    }
    
    // Function to allow users to choose a theme
    func chooseTheme(_ theme: ThemeProtocol) {
        if themes.contains(where: { $0.id == theme.id }) {
            selectedTheme = theme
        }
    }
}

