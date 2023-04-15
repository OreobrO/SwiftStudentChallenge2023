import SwiftUI

struct ContentView : View {
    
    var body: some View {
        
        NavigationView{
            NavigationLink(destination: ConceptScene()) {
                ZStack {
                    IntroScene()
                }
            }
            .navigationTitle("Intro")
        }.navigationViewStyle(.stack)
    }
}
