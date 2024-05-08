import SwiftUI
import Foundation

struct HomeView: View {
    @EnvironmentObject private var themeManager: ThemeManager
    @State private var isForecastCollapsed = true
    @State private var isSummaryCollapsed = true
    
    //Priority: GPT said toolbar should be moved from ContentView
    //to something that can be higher up and encompass a lot of pages. 
    

    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: AddtoLog()) {
                    // Handle plus button action here
                    Text("Plus")
                        .font(themeManager.selectedTheme.textTitleFont)
                        .foregroundColor(themeManager.selectedTheme.primaryThemeColor) // Adjust the color as needed
                        .padding()
                        .background(Color.clear)
                        .cornerRadius(25) // Half of the button's width
                        .shadow(radius: 2)
                        .border(themeManager.selectedTheme.primaryThemeColor, width:1)
                }
                
                VStack(spacing:-1) {
                    
                    VStack {
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
                    }
                    
                    VStack {
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
                                       
                }
                .padding()
                .padding(.bottom, 20) // Add some padding at the bottom to separate the button from the collapsible views
                .background(Color.clear) // Set the background color to transparent
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
