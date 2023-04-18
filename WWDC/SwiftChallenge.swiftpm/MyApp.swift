import SwiftUI

@main
struct MyApp: App {
    
//    @EnvironmentObject var globalStore: GlobalStore
//    
//    init() {
//        CustomFont.registerFonts(fontName: "Cinzel-VariableFont_wght")
//    }

    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(GlobalStore())
            
        }
    }
}
