//
//  SwiftUIView.swift
//  
//
//  Created by 최민규 on 2023/04/15.
//

import SwiftUI

struct IntroScene: View {
    
    @EnvironmentObject var globalStore: GlobalStore
    @State private var radiusToggle: Bool = false
    @State private var shadowToggle: Bool = false
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(RadialGradient(
                    gradient: Gradient(colors: [globalStore.colorGray1, Color.black]),
                    center: .top,
                    startRadius: radiusToggle ? 600 : 150,
                    endRadius: radiusToggle ? 1800 : 900))
                .edgesIgnoringSafeArea(.all)
                .onAppear() { radiusToggle = true }
                .animation(.easeInOut(duration: 2))
                
            Text("Gallery of\nWHAT WE SEE")
                .font(Font.custom("Cinzel-Bold", size: 100)).foregroundColor(.black)
                .shadow(radius: shadowToggle ? 5 : 0, x: 0, y: shadowToggle ? 10 : 0)
                .onAppear() { shadowToggle = true }
                .animation(.easeInOut(duration: 2))

        }.background(Color.black).edgesIgnoringSafeArea(.all)
    }
}

struct IntroScene_Previews: PreviewProvider {
    static var previews: some View {
        IntroScene().environmentObject(GlobalStore())
            .previewDevice(PreviewDevice(rawValue: "iPad Pro (12.9-inch)"))
            .previewInterfaceOrientation(.landscapeRight)
    }
}
