//
//  QuizView.swift
//  SwiftChallenge
//
//  Created by 최민규 on 2023/04/10.
//

import SwiftUI

struct MatchColorView: View {
    
    @EnvironmentObject
    var globalStore: GlobalStore

    @Binding var indexNum: Int
    @Binding var popUpToggle: Bool
    @Binding var endingToggle: Bool
    @Binding var instructionToggle: Bool
    
    var body: some View {
        
        GeometryReader { geometry in
            
            VStack(alignment: .leading) {
                Spacer().frame(height: 32)
                ZStack {
                    //white background
                    Rectangle()
                        .fill(Color.clear)
                        .background(RoundedCorners(color: .white, tl: 40, tr: 0, bl: 40, br: 0))
                        .frame(width: geometry.size.width, height: geometry.size.height - 64)
                        .shadow(radius: 12, x: -12, y: 12)
                        .overlay(
                            HStack(alignment: .bottom) {
                                Spacer().frame(width: 40)
                                
                                VStack(alignment: .leading) {
                                    //Text "Match Colors"
                                    Text("Match Colors")
                                        .font(.title.bold())
                                        .frame(width: 180)
                                        .padding(EdgeInsets(top: 24, leading: 0, bottom: 12, trailing: 0))
                                    
                                    //ColorPalleteView 1
                                    ColorPalleteView1(indexNum: $indexNum)
                                        .frame(width: geometry.size.width * 0.5, height: nil)
                                        .overlay(
                                            Circle()
                                                .fill(info.color1[indexNum])
                                                .frame(width: 130, height: 130)
                                                .shadow(color: .black, radius: 8, x: 6, y: 6)
                                                .overlay(Circle().stroke(Color.white, lineWidth: 5))
                                                .position(x: geometry.size.width * 0.42, y: geometry.size.height * 0.05))
                                        .overlay(
                                            Text("Click here")
                                                .font(.body.bold())
                                                .foregroundColor(Color.black)
                                                .opacity(0.3)
                                                .offset(x: -geometry.size.width * 0.14, y: -geometry.size.height * 0.085))
                                    
                                    Spacer().frame(height: 32)
                                    
                                    //ColorPalleteView 2
                                    ColorPalleteView2(indexNum: $indexNum)
                                        .frame(width: geometry.size.width * 0.5, height: nil)
                                        .overlay(
                                            Circle()
                                                .fill(info.color2[indexNum])
                                                .frame(width: 130, height: 130)
                                                .shadow(color: .black, radius: 8, x: 6, y: 6)
                                                .overlay(Circle().stroke(Color.white, lineWidth: 5))
                                                .position(x: geometry.size.width * 0.42, y: geometry.size.height * 0.05))
                                        .overlay(
                                            Text("Click here")
                                                .font(.body.bold())
                                                .foregroundColor(Color.black)
                                                .opacity(0.3)
                                                .offset(x: -geometry.size.width * 0.14, y: -geometry.size.height * 0.085))
                                    
                                    Spacer().frame(height: 32)
                                    
                                    //ColorPalleteView 3
                                    ColorPalleteView3(indexNum: $indexNum)
                                        .frame(width: geometry.size.width * 0.5, height: nil)
                                        .overlay(
                                            Circle()
                                                .fill(info.color3[indexNum])
                                                .frame(width: 130, height: 130)
                                                .shadow(color: .black, radius: 8, x: 6, y: 6)
                                                .overlay(Circle().stroke(Color.white, lineWidth: 5))
                                                .position(x: geometry.size.width * 0.42, y: geometry.size.height * 0.05))
                                        .overlay(
                                            Text("Click here")
                                                .font(.body.bold())
                                                .foregroundColor(Color.black)
                                                .opacity(0.3)
                                                .offset(x: -geometry.size.width * 0.14, y: -geometry.size.height * 0.085))
                                    
                                    Spacer().frame(height: 64)
                                    
                                }
                                
                                
                                Spacer().frame(width: geometry.size.width * 0.08)
                                VStack(alignment: .leading) {
                                    
                                    Spacer()
                                    Button("Redo"){
                                        globalStore.bgColor1 = globalStore.bgColor0
                                        globalStore.bgColor2 = globalStore.bgColor0
                                        globalStore.bgColor3 = globalStore.bgColor0
                                        globalStore.score = ["", "", ""]
                                        print("Redo")
                                    }.buttonStyle(.bordered).controlSize(.large).font(.body.bold()).foregroundColor(Color.black).background(Color.white).cornerRadius(10).padding(EdgeInsets(top: 0, leading: 0, bottom: 8, trailing: 0))
                                    
                                    if indexNum != info.image.count - 1 {
                                        Button("Done"){
                                            print(globalStore.colorGrades)
                                            globalStore.compareColorScore(currentIndex: indexNum)
                                            //info 와 globalStore의 값 비교하기
                                            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                                                popUpToggle = true
                                            }
                                        }.buttonStyle(.bordered).controlSize(.large).font(.body.bold()).foregroundColor(Color.white).background(LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.5), Color.blue.opacity(0.8)]), startPoint: .top, endPoint: .bottom)).cornerRadius(10).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                                    } else {
                                        Button("Done"){
                                            print(globalStore.colorGrades)
                                            globalStore.compareColorScore(currentIndex: indexNum)
                                            //info 와 globalStore의 값 비교하기
                                            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                                                endingToggle = true
                                            }
                                        }.buttonStyle(.bordered).controlSize(.large).font(.body.bold()).foregroundColor(Color.white).background(LinearGradient(gradient: Gradient(colors: [Color.red.opacity(0.7), Color.red.opacity(0.9)]), startPoint: .top, endPoint: .bottom)).cornerRadius(10).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                                    }
                                    
                                    Spacer().frame(height: 64)
                                }
                                Spacer()
                            }//HStack
                        )
                    
                    Spacer().frame(height: 32)
                    
                        Button("?"){
                            instructionToggle = true
                            print("button?")
                        }.buttonStyle(.bordered).controlSize(.large).font(.body.bold()).foregroundColor(Color.gray).background(Color.white).cornerRadius(30).padding()
                        .position(x: geometry.size.width / 1.3, y: 110)
                        .ignoresSafeArea(.all)
                        
                }//ZStack
                
            }
        }
    }
}



//
//struct MatchColorView_Previews: PreviewProvider {
//    static var previews: some View {
//        MatchColorView(indexNum: $indexNum, popUpToggle: $popUpToggle).environmentObject(GlobalStore())
//    }
//}

//    HStack{
//        Spacer()
//        VStack(alignment: .leading) {
//            Spacer()
//            Button("Redo"){ }.buttonStyle(.bordered).controlSize(.large).font(.body.bold()).foregroundColor(Color.black).background(Color.white).cornerRadius(10).padding(EdgeInsets(top: 0, leading: 0, bottom: 8, trailing: 0))
//            Button("Done"){ }.buttonStyle(.bordered).controlSize(.large).font(.body.bold()).foregroundColor(Color.white).background(Color.gray).cornerRadius(10).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
//            Spacer().frame(height: 64)
//        }
//        Spacer().frame(width: 120)
//    }
