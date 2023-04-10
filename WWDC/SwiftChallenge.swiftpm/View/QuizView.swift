//
//  QuizView.swift
//  SwiftChallenge
//
//  Created by 최민규 on 2023/04/10.
//

import SwiftUI

struct QuizView: View {
    var body: some View {
        
        VStack {
            Spacer().frame(height: 332)
            
            RoundedRectangle(cornerRadius: 24)
                .fill(Color.white)
                .frame(minWidth: 698, idealWidth: 698, maxWidth: nil, minHeight: 438, idealHeight: 438, maxHeight: nil, alignment: .bottomTrailing)
                .overlay(
                    HStack(alignment: .top) {
                        
                        VStack(alignment: .leading) {
                            Text("Drawing Board")
                                .font(.headline)
                            ColorPickerView()
                            Spacer().frame(height: 16)
                            
                            HStack (alignment: .bottom) {
                                Button("Reset"){ }.buttonStyle(.bordered).controlSize(.large).font(.system(size: 16, weight: Font.Weight.bold)).foregroundColor(Color.black)
                                Button("Submit"){ }.buttonStyle(.bordered).controlSize(.large).font(.system(size: 16, weight: Font.Weight.bold)).foregroundColor(Color.black)
                            }
                        }
                        Spacer().frame(width: 16)
                        
                        VStack(alignment: .leading) {
                            Text("Match Color")
                                .font(.headline)
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color(red: 220/255, green: 220/255, blue: 220/255))
                                .frame(width: 140)
                            Text("Mix Color")
                                .font(.headline)
                            Button("Cyan"){ }.buttonStyle(.bordered).controlSize(.regular).font(.system(size: 12, weight: Font.Weight.bold)).foregroundColor(Color.black)
                            Button("Magenta"){ }.buttonStyle(.bordered).controlSize(.regular).font(.system(size: 12, weight: Font.Weight.bold)).foregroundColor(Color.black)
                            Button("Yellow"){ }.buttonStyle(.bordered).controlSize(.regular).font(.system(size: 12, weight: Font.Weight.bold)).foregroundColor(Color.black)
                            Button("Black"){ }.buttonStyle(.bordered).controlSize(.regular).font(.system(size: 12, weight: Font.Weight.bold)).foregroundColor(Color.black)
                            Text("Mix Count")
                                .font(.headline)
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color(red: 220/255, green: 220/255, blue: 220/255))
                                .frame(width: 140, height: 32)
                            
                        }
                    }.padding()
                )
        }
    }
}
                
                struct QuizView_Previews: PreviewProvider {
                    static var previews: some View {
                        QuizView()
                    }
                }
