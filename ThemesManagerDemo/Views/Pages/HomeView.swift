import SwiftUI
import Foundation

//Goals:
//Page for theme chooser, including dark mode. 

struct HomeView: View {
    @EnvironmentObject private var themeManager: ThemeManager
    @State private var isForecastCollapsed = true
    @State private var isSummaryCollapsed = true
    @State private var isNotesViewPresented = false 
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: AddtoLog()) {
                    // Plus button
                    Text("Plus")
                        .font(themeManager.selectedTheme.textTitleFont)
                        .foregroundColor(themeManager.selectedTheme.primaryThemeColor) // Adjust the color as needed
                        .padding()
                        .background(Color.clear)
                        .cornerRadius(25) // Half of the button's width
                        .shadow(radius: 2)
                        .border(themeManager.selectedTheme.primaryThemeColor, width:1)
                }
                
                VStack(spacing:20) {
                    Collapsible(label: {
                        Text("Forecast")
                            .font(themeManager.selectedTheme.textTitleFont)
                            .foregroundColor(themeManager.selectedTheme.bodyTextColor)
                    }, content: {
                        Text("Start date projected for May 6.\nMost likely dates are May 2-10th.")
                            .font(themeManager.selectedTheme.bodyTextFont)
                    })
                    .padding()
                    .background(Color.clear) // Set the background color to transparent
                    .cornerRadius(8)
                    .border(themeManager.selectedTheme.primaryThemeColor, width: 2) // Set the border color and width
                    
                    
                    Collapsible(label: {
                        Text("Summary")
                            .font(themeManager.selectedTheme.textTitleFont)
                            .foregroundColor(themeManager.selectedTheme.bodyTextColor)
                    }, content: {
                        Text("Summary content goes here.\nLorem ipsum.")
                            .font(themeManager.selectedTheme.bodyTextFont)
                    })
                    .padding()
                    .background(Color.clear) // Set the background color to transparent
                    .cornerRadius(8)
                    .border(themeManager.selectedTheme.primaryThemeColor, width: 2) // Set the border color and width
                }
                .padding()
                .background(Color.clear) // Set the background color to transparent
            }
            .navigationBarItems(trailing:
                Button(action: {
                    isNotesViewPresented.toggle() // Toggle the NotesView presentation
                }) {
                    Image(systemName: "note.text") // Notes icon
                        .font(.title)
                        .foregroundColor(themeManager.selectedTheme.primaryThemeColor) // Adjust the color as needed
                }
            )
            .sheet(isPresented: $isNotesViewPresented) {
                // NotesView
                NotesView()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ThemeManager())
    }
}
