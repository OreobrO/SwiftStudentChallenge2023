import SwiftUI

@main
struct MyApp: App {

    init() {
        CustomFont.registerFonts(fontName: "Cinzel-Bold")
        CustomFont.registerFonts(fontName: "Cinzel-Regular")
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(GlobalStore())
            
        }
    }
}

