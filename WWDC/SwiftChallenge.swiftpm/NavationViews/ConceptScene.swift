//
//  SwiftUIView.swift
//
//
//  Created by 최민규 on 2023/04/15.
//

import SwiftUI

struct ConceptScene: View {
    
    @EnvironmentObject var globalStore: GlobalStore
    @State private var viewToggle1: Bool = false
    @State private var viewToggle2: Bool = false
    @State private var viewToggle3: Bool = false
    @State private var viewToggle4: Bool = false
    @State private var viewToggle5: Bool = false
    var body: some View {
        
        NavigationLink(destination: ScrollViewScene()) {
                ZStack {
                    Rectangle()
                        .fill(RadialGradient(
                            gradient: Gradient(colors: [globalStore.colorGray1, Color.black]),
                            center: .top,
                            startRadius: 600,
                            endRadius: 1800))
                        .edgesIgnoringSafeArea(.all)
                        .onAppear(){
                            viewToggle1 = true
                        }
                    
                    ConceptView1()
                        .opacity(viewToggle1 ? 100 : 0)
                        .onTapGesture {
                            viewToggle1 = false
                            viewToggle2 = true
                        }
                        
                    ConceptView2()
                        .opacity(viewToggle2 ? 100 : 0)
                        .onTapGesture {
                            viewToggle2 = false
                            viewToggle3 = true
                        }
                    
                    ConceptView3()
                        .opacity(viewToggle3 ? 100 : 0)
                        .onTapGesture {
                            viewToggle3 = false
                            viewToggle4 = true
                        }
                    
                    ConceptView4()
                        .opacity(viewToggle4 ? 100 : 0)
                        .onTapGesture {
                            viewToggle4 = false
                            viewToggle5 = true
                        }
                    
                        ConceptView5()
                            .opacity(viewToggle5 ? 100 : 0)
                    
                }
        }.navigationTitle("Concept")
        
    }
}


struct ConceptView1: View {
    @EnvironmentObject var globalStore: GlobalStore
    var body: some View {
            Rectangle()
                .fill(RadialGradient(
                    gradient: Gradient(colors: [globalStore.colorGray1, Color.black]),
                    center: .top,
                    startRadius: 600,
                    endRadius: 1800))
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Have you ever wondered\nwhy certain colors are the way they are and what they mean?")
                    .font(.system(size: 28)).fontWeight(.medium).foregroundColor(.black)
                    .padding(.init(top: 0, leading: 50, bottom: 30, trailing: 50))
            }//VStack
    }
}

struct ConceptView2: View {
    @EnvironmentObject var globalStore: GlobalStore
    var body: some View {
            Rectangle()
                .fill(RadialGradient(
                    gradient: Gradient(colors: [globalStore.colorGray1, Color.black]),
                    center: .top,
                    startRadius: 600,
                    endRadius: 1800))
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Egyptian Blue, the world's first synthetic\npigment made during the Bronze Age in Egypt,\nhas been a precious color used for thousands of years.")
                    .font(.system(size: 28)).fontWeight(.medium).foregroundColor(.black)
                    .padding(.init(top: 0, leading: 50, bottom: 30, trailing: 50))
                
            }//VStack
    }
}

struct ConceptView3: View {
    @EnvironmentObject var globalStore: GlobalStore
    var body: some View {
            Rectangle()
                .fill(RadialGradient(
                    gradient: Gradient(colors: [globalStore.colorGray1, Color.black]),
                    center: .top,
                    startRadius: 600,
                    endRadius: 1800))
                .edgesIgnoringSafeArea(.all)
            VStack {
                
                Text("Prehistoric cave paintings were made using\ncharcoal and ochre that were readily\navailable in the surroundings")
                    .font(.system(size: 28)).fontWeight(.medium).foregroundColor(.black)
                    .padding(.init(top: 0, leading: 50, bottom: 30, trailing: 50))
                
            }//VStack
    }
}

struct ConceptView4: View {
    @EnvironmentObject var globalStore: GlobalStore
    var body: some View {
            Rectangle()
                .fill(RadialGradient(
                    gradient: Gradient(colors: [globalStore.colorGray1, Color.black]),
                    center: .top,
                    startRadius: 600,
                    endRadius: 1800))
                .edgesIgnoringSafeArea(.all)
            VStack {
                
                Text("However in the era of Digital art,\nthe colors that the digital world perceives\nare solely determined by the difference in\nRGB values on a flat screen.")
                    .font(.system(size: 28)).fontWeight(.medium).foregroundColor(.black)
                    .padding(.init(top: 0, leading: 50, bottom: 30, trailing: 50))
                
            }//VStack
    }
}

struct ConceptView5: View {
    @EnvironmentObject var globalStore: GlobalStore
    var body: some View {
            Rectangle()
                .fill(RadialGradient(
                    gradient: Gradient(colors: [globalStore.colorGray1, Color.black]),
                    center: .top,
                    startRadius: 600,
                    endRadius: 1800))
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("This gallery provides an opportunity to\nexplore the colors found in artworks and\narchitectural materials around us,\nhoping that we can preserve the\npreciousness of the things that exist\naround us.")
                    .font(.system(size: 28)).fontWeight(.medium).foregroundColor(.black)
                    .padding(.init(top: 0, leading: 50, bottom: 30, trailing: 50))
            }//VStack
    }
}




struct ConceptScene_Previews: PreviewProvider {
    static var previews: some View {
        ConceptScene().environmentObject(GlobalStore())
            .previewDevice(PreviewDevice(rawValue: "iPad Pro (12.9-inch)"))
            .previewInterfaceOrientation(.landscapeRight)
    }
}
