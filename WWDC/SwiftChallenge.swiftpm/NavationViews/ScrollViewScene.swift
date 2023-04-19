//
//  SwiftUIView.swift
//  
//
//  Created by 최민규 on 2023/04/15.
//

import SwiftUI

struct ScrollViewScene: View {
    
    @EnvironmentObject var globalStore: GlobalStore
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                
                Rectangle()
                    .fill(RadialGradient(
                        gradient: Gradient(colors: [globalStore.colorGray1, Color.black]),
                        center: .top,
                        startRadius: 600,
                        endRadius: 1800))
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
                                            .frame(width: geometry.size.width / 4.5, height: geometry.size.height / 2)
                                            .clipped()
                                            .shadow(radius: 10, x: 10, y: 10)
                                            .padding()
                                        Text(info.title[i])
                                            .font(.title3).fontWeight(.medium).foregroundColor(.black)
                                            .padding(.top, 0)
                                        Spacer()
                                    }
                                }.navigationTitle("Gallery")
                                    .simultaneousGesture(TapGesture().onEnded{
                                        globalStore.bgColor1 = globalStore.bgColor0
                                        globalStore.bgColor2 = globalStore.bgColor0
                                        globalStore.bgColor3 = globalStore.bgColor0
                                        globalStore.score = ["", "", ""]
                                    })
                            }.padding()
                        }.padding(EdgeInsets(top: 30, leading: 100, bottom: 0, trailing: 100))//HStack
                    }//ScrollView
                    
                    Text("GALLERY OF WHAT WE SEE")
                        .font(.system(size: 80)).fontWeight(.bold).foregroundColor(.black)
                        .offset(y: -30)
                        .shadow(radius: 5, x: 0, y: 10)
                        .padding()
                }//VStack
                
            } //ZStack
        }//Geometry Reader
    }
}

struct ScrollViewScene_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewScene().environmentObject(GlobalStore())
    }
}
