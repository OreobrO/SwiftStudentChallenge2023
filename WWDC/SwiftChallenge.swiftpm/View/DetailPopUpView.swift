//
//  SwiftUIView.swift
//  
//
//  Created by 최민규 on 2023/04/11.
//

import SwiftUI

struct DetailPopUpView: View {
    
    @EnvironmentObject var globalStore: GlobalStore
    @Binding var indexNum: Int
    @Binding var popUpToggle: Bool
    @Binding var endingToggle: Bool
    
    var body: some View {
        
        GeometryReader { geometry in
            Rectangle()
                .fill(Color.black)
                .opacity(0.5)
                .edgesIgnoringSafeArea(.all)
                .onTapGesture {
                popUpToggle = false
                    print("close")
                } //click outside pop up -> close pop up
            
            ZStack() {
                RoundedRectangle(cornerRadius: 60)
                    .fill(globalStore.colorGray1)
                    .frame(width: 700, height: 550)
                    .padding()
                    .overlay(
                        VStack(alignment: .center) {
                            Spacer().frame(height: 70)
                            
                            HStack(alignment: .top) {
                                Image(info.PopImage[indexNum])
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 200, height: 200)//width == height
                                    .background(globalStore.colorGray1)
                                    .clipShape(Circle())
                                    .padding(.leading, 70)
                                VStack(alignment: .leading) {
                                    Text("This is the title of the material")
                                        .font(.system(size: 40)).fontWeight(.bold).foregroundColor(.black)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: 350, height: 100, alignment: .top)
                                        .padding(.top, 20)
                                        .lineLimit(2)
                                    
                                    HStack {
                                        Circle()
                                            .fill(info.color1[indexNum])//변수로바꿔야함
                                            .frame(width: 50, height: 50)
                                            .overlay(Circle().stroke(Color.white, lineWidth: 5))
                                            .padding(.leading, 10)
                                        Circle()
                                            .fill(info.color2[indexNum])//변수로바꿔야함
                                            .frame(width: 50, height: 50)
                                            .overlay(Circle().stroke(Color.white, lineWidth: 5))
                                            .padding(.leading, 10)
                                        Circle()
                                            .fill(info.color3[indexNum])//변수로바꿔야함
                                            .frame(width: 50, height: 50)
                                            .overlay(Circle().stroke(Color.white, lineWidth: 5))
                                            .padding(.leading, 10)
                                        Spacer()
                                    }//HStack
                                    Spacer()
                                }//VStack
                                Spacer()
                            } //HStack
                            Spacer().frame(height: 10)
                            
                            Text(info.PopDetail[indexNum])
                                .font(.body).fontWeight(.light).foregroundColor(.black)
                                .multilineTextAlignment(.center)
                                .frame(width: 500, height: 160, alignment: .top)
                                .lineLimit(7)
                            
                            Spacer().frame(height: 30)
                            HStack {
                                Button(action: {
                                    globalStore.bgColor1 = globalStore.bgColor0
                                    globalStore.bgColor2 = globalStore.bgColor0
                                    globalStore.bgColor3 = globalStore.bgColor0
                                    globalStore.score = ["", "", ""]
                                    popUpToggle = false
                                    print("Redo")
                                    
                                }) {
                                    Text("Redo")
                                        .font(.body.bold())
                                        .foregroundColor(Color.white)
                                        .frame(width: 250, height: 50)
                                        .controlSize(.large)
                                        .background(LinearGradient(gradient: Gradient(colors: [Color.gray.opacity(0.3), Color.gray.opacity(0.3)]), startPoint: .top, endPoint: .bottom))
                                        .cornerRadius(15)
                                }
                                Button(action: {
                                    popUpToggle = false
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                                        indexNum += indexNum == info.image.count - 1 ? 0 : 1
                                        //                                    indexNum = (indexNum + 1) % info.image.count
                                        globalStore.bgColor1 = globalStore.bgColor0
                                        globalStore.bgColor2 = globalStore.bgColor0
                                        globalStore.bgColor3 = globalStore.bgColor0
                                        globalStore.score = ["", "", ""]
                                        
                                    }
                                    print("Next")
                                    print("\(indexNum)")
                                    
                                }) {
                                    Text("Next")
                                        .font(.body.bold())
                                        .foregroundColor(Color.white)
                                        .frame(width: 250, height: 50)
                                        .controlSize(.large)
                                        .background(LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.5), Color.blue.opacity(0.8)]), startPoint: .top, endPoint: .bottom))
                                        .cornerRadius(15)
                                }
                            }//HStack
                            
                            Spacer().frame(height: 50)
                            
                        }//VStack
                    )//overlay
                    .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
                    .offset(x: -30)
            }//ZStack
        }//Geometry Reader
    }
}

//struct DetailPopUpView_Previews: PreviewProvider {
//
//    static var previews: some View {
//        DetailPopUpView(indexNum: 0).environmentObject(GlobalStore())
//            .previewDevice(PreviewDevice(rawValue: "iPad Pro (12.9-inch)"))
//                    .previewInterfaceOrientation(.landscapeRight)
//    }
//}
