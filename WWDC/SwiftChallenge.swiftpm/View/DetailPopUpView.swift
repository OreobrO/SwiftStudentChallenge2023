//
//  SwiftUIView.swift
//  
//
//  Created by 최민규 on 2023/04/11.
//

import SwiftUI

struct DetailPopUpView: View {
    
    let globalStore = GlobalStore()
    @Binding var indexNum: Int
    
    var body: some View {
        
        
        Rectangle()
            .fill(Color.black)
            .opacity(0.2)
            .edgesIgnoringSafeArea(.all)
        
        ZStack() {
            Rectangle()
                .fill(Color.clear)
                .frame(width: 700, height: 550)
                .border(Color.black)
            
            //                                .overlay(
            //                                    VStack(alignment: .center) {
            //                                        Spacer().frame(height: 70)
            //
            //                                        HStack(alignment: .top) {
            //                                            Image(info.PopImage[0])
            //                                                .resizable()
            //                                                .scaledToFill()
            //                                                .frame(width: 200, height: 200)//width == height
            //                                                .background(globalStore.colorGray1)
            //                                                .clipShape(Circle())
            //                                                .padding(.leading, 70)
            //                                            VStack(alignment: .leading) {
            //                                                Text("This is the title of the material")
            //                                                    .font(.system(size: 40)).fontWeight(.bold).foregroundColor(.black)
            //                                                    .multilineTextAlignment(.leading)
            //                                                    .frame(width: 350, height: 100, alignment: .top)
            //                                                    .padding(.top, 20)
            //                                                    .lineLimit(2)
            //
            //                                                HStack {
            //                                                    Circle()
            //                                                        .fill(info.color1[indexNum])//변수로바꿔야함
            //                                                        .frame(width: 50, height: 50)
            //                                                        .overlay(Circle().stroke(Color.white, lineWidth: 5))
            //                                                        .padding(.leading, 10)
            //                                                    Circle()
            //                                                        .fill(info.color2[indexNum])//변수로바꿔야함
            //                                                        .frame(width: 50, height: 50)
            //                                                        .overlay(Circle().stroke(Color.white, lineWidth: 5))
            //                                                        .padding(.leading, 10)
            //                                                    Circle()
            //                                                        .fill(info.color3[indexNum])//변수로바꿔야함
            //                                                        .frame(width: 50, height: 50)
            //                                                        .overlay(Circle().stroke(Color.white, lineWidth: 5))
            //                                                        .padding(.leading, 10)
            //                                                    Spacer()
            //                                                }//HStack
            //                                                Spacer()
            //                                            }//VStack
            //                                            Spacer()
            //                                        } //HStack
            //                                        Spacer().frame(height: 30)
            //
            //                                        Text(info.PopDetail[indexNum])
            //                                            .font(.body).fontWeight(.light).foregroundColor(.black)
            //                                            .multilineTextAlignment(.center)
            //                                            .frame(width: 500, alignment: .top)
            //                                            .lineLimit(8)
            //
            //                                        Spacer().frame(height: 70)
            //
            //                                    }//VStack
            //                                )//overlay
        }//ZStack
        
    }
}

//struct DetailPopUpView_Previews: PreviewProvider {
//
//    static var previews: some View {
//        DetailPopUpView(indexNum: 0)
//            .previewDevice(PreviewDevice(rawValue: "iPad Pro (12.9-inch)"))
//                    .previewInterfaceOrientation(.landscapeRight)
//    }
//}
