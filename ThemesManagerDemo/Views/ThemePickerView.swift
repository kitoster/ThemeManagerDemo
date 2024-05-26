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
                .font(.title)
                .padding(.bottom, 20)
            
            TabView {
                ForEach(themeManager.themes, id: \.id) { theme in
                    ThemeCardView(theme: theme) {
                        themeManager.chooseTheme(theme)
                    }
                    .padding(.horizontal, 40)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(height: 500) // Adjust height as needed
        }
    }
}


struct ThemeCardView: View {
    let theme: ThemeProtocol
    let action: () -> Void
    
    var body: some View {
            VStack {
                Image(theme.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200) // Adjust height as needed
                    .cornerRadius(8)
                    .padding(.bottom, 10)
                
                Text(theme.name)
                    .font(.headline)
                    .padding(.bottom, 10)
                
                Button(action: action) {
                    Text("Select")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                }
            }
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(12)
            .shadow(radius: 5)
            .padding(.horizontal, 20) // Add horizontal padding to make the card wider
        }
    }


struct ThemePickerView_Previews: PreviewProvider {
    static var previews: some View {
        ThemePickerView()
        .environmentObject(ThemeManager())
    }
}
