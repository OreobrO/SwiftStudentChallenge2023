//
//  SwiftUIView.swift
//  
//
//  Created by 최민규 on 2023/04/11.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        
        VStack (alignment: .leading) {
            Spacer().frame(height: 32)
            //Button 1 at the top of VStack
            Button("<  to Gallery"){ }.buttonStyle(.borderless).controlSize(.large).font(.body.bold()).foregroundColor(Color.black)
            //Picture & PictureTitle View
            HStack (alignment: .bottom) {
                //Picture View
                GeometryReader { geometry in
                    Rectangle()
                        .fill(Color.white)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .overlay(
                            Image("Image_002")
                                .resizable()
                                .scaledToFill()
                                .frame(width: geometry.size.width - 32, height: geometry.size.height - 32)
                                .background(Color.white)
                                .clipShape(Rectangle())
                        )
                    
                }
            }
            Spacer().frame(height: 16)
            //Button 2, 3 at the bottom of VStack
            HStack(alignment: .bottom) {
                //Button 2
                Button("Previous"){ }.buttonStyle(.bordered).controlSize(.large).font(.body.bold()).foregroundColor(Color.black).background(Color.white).cornerRadius(10).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 8))
                //Button 3
                Button("Next"){ }.buttonStyle(.bordered).controlSize(.large).font(.body.bold()).foregroundColor(Color.black).background(Color.white).cornerRadius(10).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }
            Spacer().frame(height: 32)
            
        }
        
    }
}


struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
