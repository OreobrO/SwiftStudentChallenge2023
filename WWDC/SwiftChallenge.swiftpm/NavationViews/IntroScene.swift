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
                .font(.system(size: 100)).fontWeight(.bold).foregroundColor(.black)

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
