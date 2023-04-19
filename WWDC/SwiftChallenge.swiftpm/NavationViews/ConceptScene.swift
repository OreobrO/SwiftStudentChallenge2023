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
    @State private var viewToggle6: Bool = false
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
                        .onTapGesture {
                            viewToggle5 = false
                            viewToggle6 = true
                        }
                    
                    ConceptView6()
                        .opacity(viewToggle6 ? 100 : 0)
                    
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
        VStack {
            
            HStack{
                Rectangle()
                    .fill(Color.clear)
                    .frame(width: 400, height: 50)
                
                Rectangle()
                    .fill(Color.clear)
                    .frame(width: 600, height: 50)
            }//HStack
                
                HStack(alignment: .bottom) {
                    
                    Image("PersonImage_001")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 400, height: 400)
                    
                    Image("ConceptText_001")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 600, height: 650)
                }//HStack
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
        
        HStack{
            Rectangle()
                .fill(Color.clear)
                .frame(width: 400, height: 300)
            
            Image("Image_001")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .padding()
                .frame(width: 600, height: 300)
        }//HStack
            
            HStack(alignment: .bottom) {
                
                Image("PersonImage_001")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 400)
                
                Image("ConceptText_002")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 600, height: 400)

            }//HStack
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
        
        HStack{
            Rectangle()
                .fill(Color.clear)
                .frame(width: 400, height: 300)
            
            Image("Image_002")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .padding()
                .frame(width: 600, height: 300)
        }//HStack
            
            HStack(alignment: .bottom) {
                
                Image("PersonImage_001")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 400)
                
                Image("ConceptText_003")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 600, height: 400)
            }//HStack
        }//VStack
    
    }
}

struct ConceptView4: View {
    @EnvironmentObject var globalStore: GlobalStore
    @State private var offsetToggle1: Bool = false
    @State private var offsetToggle2: Bool = false
    @State private var offsetToggle3: Bool = false
    @State private var triangleToggle: Bool = false

    var body: some View {
        Rectangle()
            .fill(RadialGradient(
                gradient: Gradient(colors: [globalStore.colorGray1, Color.black]),
                center: .top,
                startRadius: 600,
                endRadius: 1800))
            .edgesIgnoringSafeArea(.all)
    VStack {
        
        HStack{
            Rectangle()
                .fill(Color.clear)
                .frame(width: 400, height: 300)
            
            ZStack {
                
                Image("Image_001")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .padding()
                    .frame(width: 600, height: 300)
                    .offset(x: offsetToggle2 ? -160 : 0)
                    .onAppear(){ offsetToggle2 = true }.animation(.easeInOut(duration: 3))
                
                Image("Image_002")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .padding()
                    .frame(width: 600, height: 300)
                    .offset(x: offsetToggle3 ? -200 : 0)
                    .onAppear(){ offsetToggle3 = true }.animation(.easeInOut(duration: 3))

                Triangle()
                    .fill(RadialGradient(
                        gradient: Gradient(colors: [Color.black, globalStore.colorGray1]),
                        center: .top,
                        startRadius: 0,
                        endRadius: 300))
                    .frame(width: triangleToggle ? 250 : 0, height: 300)
                    .rotationEffect(.degrees(-90))
                    .opacity(0.5)
                    .onAppear(){ triangleToggle = true }.animation(.easeInOut(duration: 3))

                Image("ConceptImage_001")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .padding()
                    .frame(width: 300, height: 300)
                    .offset(x: offsetToggle1 ? 160 : 0)
                    .onAppear(){ offsetToggle1 = true }.animation(.easeInOut(duration: 3))
            }
        }//HStack
            
            HStack(alignment: .bottom) {
                
                Image("PersonImage_001")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 400)

                Image("ConceptText_004")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 600, height: 400)

            }//HStack
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
    VStack {
        
        HStack{
            Rectangle()
                .fill(Color.clear)
                .frame(width: 400, height: 10)
            
        }//HStack
            
            HStack(alignment: .bottom) {
                
                Image("PersonImage_001")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 400)
                
                Image("ConceptText_005")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 600, height: 690)
            }//HStack
        }//VStack
    
    }
}

struct ConceptView6: View {
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
        
        HStack{
            Rectangle()
                .fill(Color.clear)
                .frame(width: 400, height: 10)
            
        }//HStack
            
            HStack(alignment: .bottom) {
                
                Image("PersonImage_001")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 400)
                
                Image("ConceptText_006")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 600, height: 690)
            }//HStack
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
