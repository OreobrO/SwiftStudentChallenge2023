//
//  SwiftUIView.swift
//  
//
//  Created by 최민규 on 2023/04/11.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        
        Rectangle()
            .fill(Color.white)
            .frame(minWidth: 400, idealWidth: 400, maxWidth: 400, minHeight: 770, idealHeight: 770, maxHeight: nil, alignment: .top)
            .edgesIgnoringSafeArea(.all)
            .overlay(
                VStack (alignment: .leading) {
                    Image("Image_002")
                        .resizable()
                        .frame(width: 368, height: 552)
                        .scaledToFill()
                        .padding(EdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 16))
                    Text("NameofArtist \nThisIs TheTitleOfArt(1919)").font(.headline).bold().padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                    Text("Oil paint on canvas").font(.body).padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                    Spacer()
                    HStack(alignment: .bottom) {
                        Spacer()
                        Button("Previous"){ }.buttonStyle(.bordered).controlSize(.large).font(.system(size: 16, weight: Font.Weight.bold)).foregroundColor(Color.black).padding(EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 0))
                        Button("Next"){ }.buttonStyle(.bordered).controlSize(.large).font(.system(size: 16, weight: Font.Weight.bold)).foregroundColor(Color.black).padding(EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 16))
                    }
                })
            
        }
    }


struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
