//
//  SwiftUIView.swift
//  
//
//  Created by 최민규 on 2023/04/15.
//

import SwiftUI

struct ScrollViewScene: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                HStack {
                    ForEach(0...4 , id: \.self) { i in
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
            
            Text("Choose Images from Gallery")
                .font(.system(size: 80)).fontWeight(.bold).foregroundColor(.black)
                .offset(y: -30)
                .padding()
        }//VStack
    }
}

struct ScrollViewScene_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewScene()
    }
}
