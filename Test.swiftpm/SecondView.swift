//
//  SeconView.swift
//  Test
//
//  Created by 최민규 on 2023/04/16.
//

import SwiftUI

struct SecondView: View {
    @EnvironmentObject var globalStore: GlobalStore
    
    var body: some View {
  
        Text(globalStore.isOn ? "Yes" : "No")
        
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView().environmentObject(GlobalStore())
    }
}
