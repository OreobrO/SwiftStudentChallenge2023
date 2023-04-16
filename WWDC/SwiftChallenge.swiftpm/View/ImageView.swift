//
//  SwiftUIView.swift
//  
//
//  Created by 최민규 on 2023/04/11.
//

import SwiftUI

struct ImageView: View {
    @Binding var indexNum: Int
    
    var body: some View {
        
        VStack (alignment: .leading) {
            Spacer().frame(height: 96)
            //Picture & PictureTitle View
            HStack (alignment: .bottom) {
                //Picture View
                GeometryReader { geometry in
                    Rectangle()
                        .fill(Color.white)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .overlay(
                            Image(info.image[indexNum])
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
                Button("Previous"){
                   indexNum = (indexNum + info.image.count - 1) % info.image.count
                
                    print("\(indexNum)")
                }.buttonStyle(.bordered).controlSize(.large).font(.body.bold()).foregroundColor(Color.black).background(Color.white).cornerRadius(10).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 8))
                //Button 3
                Button("Next"){
                    indexNum = (indexNum + 1) % info.image.count
                   
                    print("\(indexNum)")
                }.buttonStyle(.bordered).controlSize(.large).font(.body.bold()).foregroundColor(Color.black).background(Color.white).cornerRadius(10).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }
            Spacer().frame(height: 32)
            
        }
        
    }
}


//struct ImageView_Previews: PreviewProvider {
//    static var previews: some View {
//        ImageView(indexNum: 0)
//    }
//}
