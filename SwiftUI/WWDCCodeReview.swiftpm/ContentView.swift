import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var globalStore: GlobalStore
    
    var body: some View {
        NavigationView {
            ScrollView(.horizontal) {
                HStack {
                    ForEach(0 ..< info.image.count , id: \.self) { i in
                        NavigationLink(destination: MainView())
                        {
                            Image(info.image[i])
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300, height: 500)
                        }.navigationTitle("Gallery")//NavigationLink
                            .simultaneousGesture(TapGesture().onEnded{
                                globalStore.indexNum = i
                            })
                    }//ForEach
                }//HStack
            }//ScrollView
        }.navigationViewStyle(.stack)
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView(indexNumber: $indexNumber).environmentObject(GlobalStore())
//    }
//}
