//
//  QuizView.swift
//  SwiftChallenge
//
//  Created by 최민규 on 2023/04/10.
//

import SwiftUI

struct MatchColorView: View {
    
    var body: some View {
        
        GeometryReader { geometry in
            
            VStack(alignment: .leading) {
                Spacer().frame(height: 32)
                
                //white background
                Rectangle()
                    .fill(Color.clear)
                    .background(RoundedCorners(color: .white, tl: 40, tr: 0, bl: 40, br: 0))
                    .frame(width: geometry.size.width, height: geometry.size.height - 64)
                    .shadow(radius: 8, x: -8, y: 8)
                    .overlay(
                        HStack(alignment: .bottom) {
                            Spacer().frame(width: 40)
                            
                            VStack(alignment: .leading) {
                                //Text "Match Colors"
                                Text("Match Colors").font(.title.bold()).padding(EdgeInsets(top: 24, leading: 0, bottom: 12, trailing: 0))
                                
                                //ColorPickerView 1
                                ColorPickerView()
                                    .frame(width: geometry.size.width * 0.5, height: nil)
                                    .overlay(
                                        Circle()
                                            .fill(Color.red)
                                            .frame(width: 130, height: 130)
                                            .shadow(color: .black, radius: 8, x: 6, y: 6)
                                            .overlay(Circle().stroke(Color.white, lineWidth: 5))
                                            .position(x: geometry.size.width * 0.42, y: geometry.size.height * 0.05))
                                    .overlay(
                                        Text("Click here")
                                            .font(.body.bold())
                                            .foregroundColor(Color.black)
                                            .opacity(0.3)
                                            .offset(x: -geometry.size.width * 0.14, y: -geometry.size.height * 0.08))
                                
                                Spacer().frame(height: 32)
                                
                                //ColorPickerView 2
                                ColorPickerView()
                                    .frame(width: geometry.size.width * 0.5, height: nil)
                                    .overlay(
                                        Circle()
                                            .fill(Color.cyan)
                                            .frame(width: 130, height: 130)
                                            .shadow(color: .black, radius: 8, x: 6, y: 6)
                                            .overlay(Circle().stroke(Color.white, lineWidth: 5))
                                            .position(x: geometry.size.width * 0.42, y: geometry.size.height * 0.05))
                                    .overlay(
                                        Text("Click here")
                                            .font(.body.bold())
                                            .foregroundColor(Color.black)
                                            .opacity(0.3)
                                            .offset(x: -geometry.size.width * 0.14, y: -geometry.size.height * 0.08)
                                    )
                                Spacer().frame(height: 32)
                                
                                //ColorPickerView 3
                                ColorPickerView()
                                    .frame(width: geometry.size.width * 0.5, height: nil)
                                    .overlay(
                                        Circle()
                                            .fill(Color.green)
                                            .frame(width: 130, height: 130)
                                            .shadow(color: .black, radius: 8, x: 6, y: 6)
                                            .overlay(Circle().stroke(Color.white, lineWidth: 5))
                                            .position(x: geometry.size.width * 0.42, y: geometry.size.height * 0.05))
                                    .overlay(
                                        Text("Click here")
                                            .font(.body.bold())
                                            .foregroundColor(Color.black)
                                            .opacity(0.3)
                                            .offset(x: -geometry.size.width * 0.14, y: -geometry.size.height * 0.08))
                                
                                Spacer().frame(height: 64)
                                
                            }
                            Spacer().frame(width: geometry.size.width * 0.08)
                            VStack(alignment: .leading) {
                               
                                Button("Redo"){ }.buttonStyle(.bordered).controlSize(.large).font(.body.bold()).foregroundColor(Color.black).background(Color.white).cornerRadius(10).padding(EdgeInsets(top: 0, leading: 0, bottom: 8, trailing: 0))
                                Button("Done"){ }.buttonStyle(.bordered).controlSize(.large).font(.body.bold()).foregroundColor(Color.white).background(Color.gray).cornerRadius(10).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                                Spacer().frame(height: 64)
                            }
                            Spacer()
                        })
            }
        }
    }
}


struct MatchColorView_Previews: PreviewProvider {
    static var previews: some View {
        MatchColorView()
    }
}

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
