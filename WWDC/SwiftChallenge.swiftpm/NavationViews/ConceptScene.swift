//
//  SwiftUIView.swift
//
//
//  Created by 최민규 on 2023/04/15.
//

import SwiftUI

struct ConceptScene: View {
    
    @EnvironmentObject var globalStore: GlobalStore

    var body: some View {
        
        NavigationLink(destination: ScrollViewScene()) {
            GeometryReader { geometry in
                ZStack {
                    Rectangle()
                        .fill(RadialGradient(
                            gradient: Gradient(colors: [globalStore.colorGray1, Color.black]),
                            center: .top,
                            startRadius: 600,
                            endRadius: 1800))
                        .edgesIgnoringSafeArea(.all)
                    
                    TextView1()
                    TextView2()
                    
                    
                }
                
            }//Geometry Reader
        }.navigationTitle("Concept")
        
    }
}


struct TextView1: View {
    
    @EnvironmentObject var globalStore: GlobalStore

    
    var body: some View {
        
        GeometryReader { geometry in
            
            VStack{
                Text("Welcome to the Gallery of what we see.")
                    .font(.system(size: 28)).fontWeight(.medium).foregroundColor(.black)
                    .padding(.init(top: 0, leading: 50, bottom: 30, trailing: 50))
                    .opacity(textToggle1 ? 100 : 0)
            }//VStack
        }
    }
}


struct TextView2: View {
    
    @EnvironmentObject var globalStore: GlobalStore
    @State private var textToggle3:Bool = false
    @State private var textToggle4:Bool = false
    @State private var textToggle5:Bool = false
    
    var body: some View {
        
        GeometryReader { geometry in
            VStack {
                
                Spacer().frame(height: geometry.size.height / 2)
                
                Text("Prehistoric cave paintings were made using charcoal and ochre that were readily available in the surroundings, and Egyptian Blue, the world's first synthetic pigment made during the Bronze Age in Egypt, has been a precious color used for thousands of years.")
                    .font(.system(size: 28)).fontWeight(.medium).foregroundColor(.black)
                    .padding(.init(top: 0, leading: 50, bottom: 30, trailing: 50))
                    .opacity(textToggle3 ? 100 : 0)
                
                Text("However in the era of AI-generated art, the colors that the digital world perceives are solely determined by the difference in RGB values on a flat screen.")
                    .font(.system(size: 28)).fontWeight(.medium).foregroundColor(.black)
                    .padding(.init(top: 0, leading: 50, bottom: 30, trailing: 50))
                    .opacity(textToggle4 ? 100 : 0)
                
                HStack {
                    Spacer()
                    
                    Text("NEXT >")
                        .font(.system(size: 28)).fontWeight(.bold).foregroundColor(.black)
                        .padding(.init(top: 0, leading: 50, bottom: 30, trailing: 50))
                        .opacity(textToggle4 ? 100 : 0)
                }//HStack
                Spacer()
            }.onAppear(){
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) { textToggle3 = true }
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) { textToggle4 = true }
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) { textToggle5 = true }
            }.animation(.easeInOut(duration: 20))
        }
    }
}


struct ConceptScene_Previews: PreviewProvider {
    static var previews: some View {
        ConceptScene().environmentObject(GlobalStore())
            .previewDevice(PreviewDevice(rawValue: "iPad Pro (12.9-inch)"))
            .previewInterfaceOrientation(.landscapeRight)
    }
}
