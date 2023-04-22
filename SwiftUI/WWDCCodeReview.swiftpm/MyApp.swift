import SwiftUI

@main
struct MyApp: App {
    
    @EnvironmentObject var globalStore: GlobalStore
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(GlobalStore())
        }
    }
}
