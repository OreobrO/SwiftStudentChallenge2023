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
                        gradient: Gradient(colors: [globalStore.colorGray1, Color.black]),
                        center: .top,
                        startRadius: 600,
                        endRadius: 1800))
                    .edgesIgnoringSafeArea(.all)
                Text("This is the ending")
                    .font(.system(size: 80)).fontWeight(.bold).foregroundColor(.black)
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

