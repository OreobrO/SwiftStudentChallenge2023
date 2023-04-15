import SwiftUI

struct ContentView : View {
    
    var body: some View {
        
        NavigationView{
            NavigationLink(destination: ScrollViewScene()) {
                ZStack {
                    
                    IntroScene()
                }
            }
            .navigationTitle("Intro")
        }.navigationViewStyle(.stack)
    }
}
