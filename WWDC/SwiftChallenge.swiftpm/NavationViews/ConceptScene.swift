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
            ZStack {
                Rectangle()
                    .fill(RadialGradient(
                        gradient: Gradient(colors: [globalStore.colorGray2, globalStore.colorGray0]),
                        center: .bottom,
                        startRadius: 200,
                        endRadius: 1000))
                    .edgesIgnoringSafeArea(.all)
                Text("This is the Concept")
                    .font(.system(size: 80)).fontWeight(.bold).foregroundColor(.black)
                    .offset(y: -60)
                
            }
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
