//
//  SwiftUIView.swift
//  
//
//  Created by 최민규 on 2023/04/15.
//

import SwiftUI

struct MatchColorScene: View {
    
    let globalStore = GlobalStore()
    @State var indexNum: Int = 10
    @State private var popUpToggle: Bool = false
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .center) {
                Rectangle()
                    .fill(globalStore.colorGray2)
                    .edgesIgnoringSafeArea(.all)
                ZStack {
                    HStack(alignment: .bottom) {
                        Spacer().frame(width: 32)
                        ImageView(indexNum: $indexNum).frame(width: geometry.size.width * 0.38)
                        Spacer().frame(width: 8)
                        ImageTitleView(indexNum: $indexNum).frame(width: geometry.size.width * 0.18)
                        Spacer().frame(width: 32)
                        MatchColorView(indexNum: $indexNum, popUpToggle: $popUpToggle).frame(width: geometry.size.width * 0.44)
                    }.edgesIgnoringSafeArea(.all)
                }.edgesIgnoringSafeArea(.all) //ZStack
                
           
                    DetailPopUpView(indexNum: $indexNum, popUpToggle: $popUpToggle)
                        .opacity(popUpToggle ? 1 : 0)
                        .animation(.easeInOut(duration: 0.2))
                        .onAppear()

                
            }.edgesIgnoringSafeArea(.all) //ZStack
        }//Geometry Reader
        
    }
}

//struct MatchColorScene_Previews: PreviewProvider {
//    static var previews: some View {
//        MatchColorScene()
//            .previewDevice(PreviewDevice(rawValue: "iPad Pro (12.9-inch)"))
//            .previewInterfaceOrientation(.landscapeRight)
//    }
//}
