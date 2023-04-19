import SwiftUI

@main
struct MyApp: App {

    init() {
        CustomFont.registerFonts(fontName: "Cinzel-VariableFont_wght")
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(GlobalStore())
            
        }
    }
}
