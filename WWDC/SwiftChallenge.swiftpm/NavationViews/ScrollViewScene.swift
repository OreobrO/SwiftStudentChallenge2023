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
                                        .frame(width: 240, height: 320)
                                        .shadow(radius: 10, x: 10, y: 10)
                                        .padding()
                                    Text(info.title[i])
                                        .padding()
                                    Spacer()
                                }
                            }.navigationTitle("Gallery")
                        }
                    }//HStack
                }//ScrollView
                
                Text("Choose Image from the Gallery")
                    .font(.system(size: 80)).fontWeight(.bold).foregroundColor(.black)
                    .offset(y: -30)
                    .padding()
            }//VStack
            
        } //ZStack
    }
}

struct ScrollViewScene_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewScene()
    }
}
