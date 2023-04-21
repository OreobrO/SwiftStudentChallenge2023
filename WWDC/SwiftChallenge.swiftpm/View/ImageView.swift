//
//  SwiftUIView.swift
//  
//
//  Created by 최민규 on 2023/04/11.
//

import SwiftUI

struct ImageView: View {
    
    @EnvironmentObject var globalStore: GlobalStore
    @Binding var indexNum: Int
    
    var body: some View {
        
        VStack (alignment: .leading) {
            Spacer().frame(height: 96)
            //Picture & PictureTitle View
            HStack (alignment: .bottom) {
                //Picture View
                GeometryReader { geometry in

                    ZStack {
                        Rectangle()
                            .fill(Color.white.opacity(0.8))
                            .frame(width: geometry.size.width, height: geometry.size.height)
                    
                        ScrollView(.horizontal) {
                        Image(info.image[indexNum])
                            .resizable()
                            .scaledToFill()
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .background(Color.white)
                        }
                        
                        Rectangle()
                            .stroke(Color.white, lineWidth: 16)
                            .frame(width: geometry.size.width - 16, height: geometry.size.height - 16)
                    
                    }
                }
            }
            Spacer().frame(height: 16)
            //Button 2, 3 at the bottom of VStack
            HStack(alignment: .bottom) {
                //Button 2
                Button("Previous"){
//                    indexNum -= indexNum == 0 ? 0 : 1
                   indexNum = (indexNum + info.image.count - 1) % info.image.count
                    globalStore.bgColor1 = globalStore.bgColor0
                    globalStore.bgColor2 = globalStore.bgColor0
                    globalStore.bgColor3 = globalStore.bgColor0
                    print("Previous")
                    print("\(indexNum)")
                }.buttonStyle(.bordered).controlSize(.large).font(.body.bold()).foregroundColor(Color.black).background(Color.white).cornerRadius(10).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 8))
                //Button 3
                Button("Next"){
//                    indexNum += indexNum == info.image.count - 1 ? 0 : 1
                    indexNum = (indexNum + 1) % info.image.count
                    globalStore.bgColor1 = globalStore.bgColor0
                    globalStore.bgColor2 = globalStore.bgColor0
                    globalStore.bgColor3 = globalStore.bgColor0
                    globalStore.score = ["", "", ""]
                    print("Next")
                    print("\(indexNum)")
                }.buttonStyle(.bordered).controlSize(.large).font(.body.bold()).foregroundColor(Color.black).background(Color.white).cornerRadius(10).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }
            Spacer().frame(height: 32)
            
        }
        
    }
}

//
//struct ImageView_Previews: PreviewProvider {
//    static var previews: some View {
//        ImageView(indexNum: $indexNum).environmentObject(GlobalStore())
//    }
//}
