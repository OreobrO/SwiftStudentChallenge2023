import SwiftUI

struct ContentView : View {
    
    
    var body: some View {
        
        
        
        ZStack {
            Rectangle()
                .fill(Color(red: 180/255, green: 180/255, blue: 180/255))
                .edgesIgnoringSafeArea(.all)
            
            VStack {
//
                HStack(alignment: .bottom) {
                    Spacer().frame(width: 32)
                    ImageView()
                    Spacer().frame(width: 32)
                    QuizView()
                }
            
            }
            
        }
        
    }
}
