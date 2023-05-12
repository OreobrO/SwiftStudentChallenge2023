//
//  ContentView.swift
//  testJose
//
//  Created by 최민규 on 2023/05/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            TabView{
                test1().navigationTitle("나의 요망")
                test2().navigationTitle("너의 요망")
            }
            .tabViewStyle(.page(indexDisplayMode : .always))
            .indexViewStyle(.page(backgroundDisplayMode: .always))
            .navigationViewStyle(.stack)
            .padding(20)
            .background(LinearGradient(colors: [.red, .black], startPoint: .top, endPoint: .bottom))
        }.navigationBarTitleDisplayMode(.large)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
