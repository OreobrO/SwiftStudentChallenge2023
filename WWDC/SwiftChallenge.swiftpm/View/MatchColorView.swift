//
//  QuizView.swift
//  SwiftChallenge
//
//  Created by 최민규 on 2023/04/10.
//

import SwiftUI

struct MatchColorView: View {
    
    let globalStore = GlobalStore()
    @Binding var indexNum: Int
    @Binding var popUpToggle: Bool
//    @Binding var bgColor1: Color
//    @Binding var bgColor2: Color
//    @Binding var bgColor3: Color
    
    var body: some View {
        
        GeometryReader { geometry in
            
            VStack(alignment: .leading) {
                Spacer().frame(height: 32)
                
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
                                
                                Button("Redo"){
                                    globalStore.bgColor1 = Color.white
                                    globalStore.bgColor2 = Color.white
                                    globalStore.bgColor3 = Color.white
                                    print("redo")
                                }.buttonStyle(.bordered).controlSize(.large).font(.body.bold()).foregroundColor(Color.black).background(Color.white).cornerRadius(10).padding(EdgeInsets(top: 0, leading: 0, bottom: 8, trailing: 0))
                                Button("Done"){
                                    print(indexNum)
                                    print("globalStore.bgColor1 = \(globalStore.bgColor1)")
                                    print("globalStore.bgColor1 = \(globalStore.bgColor2)")
                                    print("globalStore.bgColor1 = \(globalStore.bgColor3)")
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                                        popUpToggle = true
                                    }
                                    
                                }.buttonStyle(.bordered).controlSize(.large).font(.body.bold()).foregroundColor(Color.white).background(LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.5), Color.blue.opacity(0.8)]), startPoint: .top, endPoint: .bottom)).cornerRadius(10).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                                
                                Spacer().frame(height: 64)
                            }
                            Spacer()
                        })
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
