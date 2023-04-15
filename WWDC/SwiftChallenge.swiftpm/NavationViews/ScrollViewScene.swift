//
//  SwiftUIView.swift
//  
//
//  Created by 최민규 on 2023/04/15.
//

import SwiftUI

struct ScrollViewScene: View {
    var body: some View {
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
                                .padding()
                            Text(info.title[i])
                                .padding(.top)
                        }
                    }.navigationTitle("Gallery")
                }
            }
        }
    }
}

struct ScrollViewScene_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewScene()
    }
}
