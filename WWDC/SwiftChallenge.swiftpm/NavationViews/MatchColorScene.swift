//
//  SwiftUIView.swift
//  
//
//  Created by 최민규 on 2023/04/15.
//

import SwiftUI

struct MatchColorScene: View {
    
    @EnvironmentObject var globalStore: GlobalStore
    @State var indexNum: Int = 10
    @State private var popUpToggle: Bool = false
    @State private var endingToggle: Bool = false
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .center) {
                Rectangle()
                    .fill(RadialGradient(
                        gradient: Gradient(colors: [globalStore.colorGray2, Color.white]),
                        center: .bottom,
                        startRadius: 600,
                        endRadius: 1800))
                    .edgesIgnoringSafeArea(.all)
                ZStack {
                    HStack(alignment: .bottom) {
                        Spacer().frame(width: 32)
                        ImageView(indexNum: $indexNum).frame(width: geometry.size.width * 0.38)
                        Spacer().frame(width: 8)
                        ImageTitleView(indexNum: $indexNum).frame(width: geometry.size.width * 0.18)
                        Spacer().frame(width: 32)
                        MatchColorView(indexNum: $indexNum, popUpToggle: $popUpToggle, endingToggle: $endingToggle).frame(width: geometry.size.width * 0.44)
                    }.edgesIgnoringSafeArea(.all)
                }.edgesIgnoringSafeArea(.all) //ZStack
                
                DetailPopUpView(indexNum: $indexNum, popUpToggle: $popUpToggle, endingToggle: $endingToggle)
                        .opacity(popUpToggle ? 1 : 0)
                        .animation(.easeInOut(duration: 0.5))
                        .onAppear()
                    EndingScene()
                        .opacity(endingToggle ? 1 : 0)
                        .animation(.easeInOut(duration: 1))
                        .onAppear()

                
            }.edgesIgnoringSafeArea(.all) //ZStack
        }//Geometry Reader
        
    }
}

struct MatchColorScene_Previews: PreviewProvider {
    static var previews: some View {
        MatchColorScene().environmentObject(GlobalStore())
            .previewDevice(PreviewDevice(rawValue: "iPad Pro (12.9-inch)"))
            .previewInterfaceOrientation(.landscapeRight)
    }
}
