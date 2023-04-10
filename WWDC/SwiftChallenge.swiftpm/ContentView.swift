import SwiftUI

struct ContentView : View {
    
    
    var body: some View {
        
        
        
        ZStack {
            Rectangle()
                .fill(Color(red: 220/255, green: 220/255, blue: 220/255))
            
            VStack {
                Spacer().frame(height: 32).edgesIgnoringSafeArea(.top)
                
                HStack(alignment: .top) {
                    Spacer().frame(width: 32)
                    ImageView()
                    Spacer().frame(width: 32)
                    QuizView()
                    Spacer().frame(width: 32)
                }
                Spacer().frame(height: 32).edgesIgnoringSafeArea(.bottom)
            }
            InfoView()
            
        }
        
    }
}

//코너 라운드 기능
//
