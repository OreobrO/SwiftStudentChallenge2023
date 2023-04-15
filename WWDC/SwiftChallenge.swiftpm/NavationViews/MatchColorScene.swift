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
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .fill(globalStore.colorGray2)
                .edgesIgnoringSafeArea(.all)
            GeometryReader { geometry in
                ZStack {
                    HStack(alignment: .bottom) {
                        Spacer().frame(width: 32)
                        ImageView(indexNum: indexNum).frame(width: geometry.size.width * 0.38)
                        Spacer().frame(width: 8)
                        ImageTitleView(indexNum: indexNum).frame(width: geometry.size.width * 0.18)
                        Spacer().frame(width: 32)
                        MatchColorView().frame(width: geometry.size.width * 0.44)
                    }.edgesIgnoringSafeArea(.all)
                
                }
            }
        }
        
        
    }
}

struct MatchColorScene_Previews: PreviewProvider {
    static var previews: some View {
        MatchColorScene()
            .previewDevice(PreviewDevice(rawValue: "iPad Pro (12.9-inch)"))
            .previewInterfaceOrientation(.landscapeRight)
    }
}
