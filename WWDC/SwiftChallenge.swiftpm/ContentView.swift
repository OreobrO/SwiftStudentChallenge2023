import SwiftUI

struct ContentView : View {
    
    
    var body: some View {
        
        
        
        ZStack {
            Rectangle()
                .fill(Color(red: 180/255, green: 180/255, blue: 180/255))
                .edgesIgnoringSafeArea(.all)
            GeometryReader { geometry in
                
                HStack(alignment: .bottom) {
                    Spacer().frame(width: 32)
                    ImageView().frame(width: geometry.size.width * 0.38)
                    Spacer().frame(width: 8)
                    ImageTitleView().frame(width: geometry.size.width * 0.18)
                    Spacer().frame(width: 32)
                    MatchColorView().frame(width: geometry.size.width * 0.44)
                }.edgesIgnoringSafeArea(.all)
                
            }
        }
        
        
        
        
    }
}
