//
//  SwiftUIView.swift
//  
//
//  Created by 최민규 on 2023/04/17.
//

import SwiftUI

struct EndingScene: View {
    
    @EnvironmentObject var globalStore: GlobalStore
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .center) {
                Rectangle()
                    .fill(RadialGradient(
                        gradient: Gradient(colors: [globalStore.colorGray2, globalStore.colorGray0]),
                        center: .bottom,
                        startRadius: 200,
                        endRadius: 1000))
                    .edgesIgnoringSafeArea(.all)
                Text("This is the ending")
                    .font(.system(size: 80)).fontWeight(.bold).foregroundColor(.black)
                    .border(Color.black)
                    .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
                    .offset(x: -30)
            }.edgesIgnoringSafeArea(.all)
        }//Geometry Reader
    }
}

struct EndingScene_Previews: PreviewProvider {
    static var previews: some View {
        EndingScene()
     
    }
}
