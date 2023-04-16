//
//  SwiftUIView.swift
//  
//
//  Created by 최민규 on 2023/04/15.
//

import SwiftUI

struct ScrollViewScene: View {
    
    let globalStore = GlobalStore()
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                
                Rectangle()
                    .fill(RadialGradient(
                        gradient: Gradient(colors: [globalStore.colorGray2, globalStore.colorGray0]),
                        center: .bottom,
                        startRadius: 200,
                        endRadius: 1000))
                    .edgesIgnoringSafeArea(.all)
            
                VStack {
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(0 ..< info.image.count , id: \.self) { i in
                                NavigationLink(destination: MatchColorScene(indexNum: i))
                                {
                                    VStack {
                                        Image(info.image[i])
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: geometry.size.width / 5, height: geometry.size.height / 2)
                                            .shadow(radius: 10, x: 10, y: 10)
                                            .padding()
                                        Text(info.title[i])
                                            .font(.title3).fontWeight(.medium).foregroundColor(.black)
                                            .padding(.top, 0)
                                        Spacer()
                                    }
                                }.navigationTitle("Gallery")
                            }.padding()
                        }.padding(EdgeInsets(top: 30, leading: 100, bottom: 0, trailing: 100))//HStack
                    }//ScrollView
                    
                    Text("Choose Image from the Gallery")
                        .font(.system(size: 80)).fontWeight(.bold).foregroundColor(.black)
                        .offset(y: -30)
                        .padding()
                }//VStack
                
            } //ZStack
        }//Geometry Reader
    }
}

struct ScrollViewScene_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewScene()
    }
}
