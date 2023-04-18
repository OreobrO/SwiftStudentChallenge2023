//
//  SwiftUIView.swift
//  
//
//  Created by 최민규 on 2023/04/18.
//

import SwiftUI

struct InstructionScene: View {
    @EnvironmentObject var globalStore: GlobalStore
    @Binding var instructionToggle: Bool
    var body: some View {
       
        GeometryReader { geometry in
            ZStack{
                Rectangle()
                    .fill(Color.black)
                    .opacity(0.5)
                    .edgesIgnoringSafeArea(.all)
                
                Image("Image_Instruction")
                    .resizable()
                    .scaledToFit()
                    .opacity(1)
                    .frame(width: geometry.size.width / 1.2)
                    .offset(x: -30, y: 20)
                    
            }.onTapGesture {
                instructionToggle = false
            }//ZStack
            
        }//Geometry Reader
        
    }
}

