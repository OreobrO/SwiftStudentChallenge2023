import SwiftUI

struct ContentView : View {
    
    var body: some View {
        
        NavigationView{
            ScrollView(.horizontal) {
                HStack {
                    ForEach(0...4 , id: \.self) { i in
                        NavigationLink(destination: MatchColorScene(indexNum: i))
                            {
                                VStack {
                                    Image(info.image[i])
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 240, height: 320)
                                        .padding()
                                    Text(info.title[i])
                                        .padding(.top)
                                }
                        }
                    }
                    
                }
            }
        }.navigationViewStyle(.stack)
        
    }
}
