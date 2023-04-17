//
//  SwiftUIView.swift
//
//
//  Created by 최민규 on 2023/04/15.
//

import SwiftUI

struct ConceptScene: View {
    
    @EnvironmentObject var globalStore: GlobalStore
    @State private var textToggle1:Bool = false
    @State private var textToggle2:Bool = false
    @State private var textToggle3:Bool = false
    @State private var textToggle4:Bool = false
    @State private var textToggle5:Bool = false
    @State private var radiusToggle: Bool = false
    
    var body: some View {
        
        NavigationLink(destination: ScrollViewScene()) {
            ZStack {
                Rectangle()
                    .fill(RadialGradient(
                        gradient: Gradient(colors: [globalStore.colorGray1, Color.black]),
                        center: .top,
                        startRadius: radiusToggle ? 600 : 300,
                        endRadius: radiusToggle ? 1800 : 1200))
                    .edgesIgnoringSafeArea(.all)
                    .onAppear() { radiusToggle = true }
                    .animation(.easeInOut(duration: 15))
                VStack{
                    Text("Welcome to the Gallery of what we see.")
                        .font(.system(size: 28)).fontWeight(.medium).foregroundColor(.black)
                        .padding(.init(top: 0, leading: 50, bottom: 30, trailing: 50))
                        .opacity(textToggle1 ? 100 : 0)
                    
                    Text("Have you ever wondered why certain colors are the way they are and what they mean? The meaning of colors has changed over time, place, and culture.")
                        .font(.system(size: 28)).fontWeight(.medium).foregroundColor(.black)
                        .padding(.init(top: 0, leading: 50, bottom: 30, trailing: 50))
                        .opacity(textToggle2 ? 100 : 0)
                    
                    Text("Prehistoric cave paintings were made using charcoal and ochre that were readily available in the surroundings, and Egyptian Blue, the world's first synthetic pigment made during the Bronze Age in Egypt, has been a precious color used for thousands of years.")
                        .font(.system(size: 28)).fontWeight(.medium).foregroundColor(.black)
                        .padding(.init(top: 0, leading: 50, bottom: 30, trailing: 50))
                        .opacity(textToggle3 ? 100 : 0)
                    
                    Text("However in the era of AI-generated art, the colors that the digital world perceives are solely determined by the difference in RGB values on a flat screen.")
                        .font(.system(size: 28)).fontWeight(.medium).foregroundColor(.black)
                        .padding(.init(top: 0, leading: 50, bottom: 30, trailing: 50))
                        .opacity(textToggle4 ? 100 : 0)
                    
                    Text("By examining the colors found in art that expressed various emotions through materials and the colors found in architectural materials around us, we hope that we can preserve the preciousness of the things that exist in our world.")
                        .font(.system(size: 28)).fontWeight(.medium).foregroundColor(.black)
                        .padding(.init(top: 0, leading: 50, bottom: 30, trailing: 50))
                        .opacity(textToggle5 ? 100 : 0)
                    
                }
               
            }.onAppear(){
                textToggle1 = true
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) { textToggle2 = true }
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) { textToggle3 = true }
                DispatchQueue.main.asyncAfter(deadline: .now() + 10) { textToggle4 = true }
                DispatchQueue.main.asyncAfter(deadline: .now() + 15) { textToggle5 = true }
            }.animation(.easeInOut(duration: 20))
        }
        .navigationTitle("Concept")
        
    }
}

struct ConceptScene_Previews: PreviewProvider {
    static var previews: some View {
        ConceptScene().environmentObject(GlobalStore())
            .previewDevice(PreviewDevice(rawValue: "iPad Pro (12.9-inch)"))
            .previewInterfaceOrientation(.landscapeRight)
    }
}
