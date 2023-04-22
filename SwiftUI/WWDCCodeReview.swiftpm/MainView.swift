//
//  MainView.swift
//  WWDCCodeReview
//
//  Created by 최민규 on 2023/04/22.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject var globalStore: GlobalStore
    
    var body: some View {
        VStack {
            Image(info.image[globalStore.indexNum])
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 500)
            Text(info.title[globalStore.indexNum])
            Text("Index Number: \(globalStore.indexNum)")
        }//VStack
    }
}

