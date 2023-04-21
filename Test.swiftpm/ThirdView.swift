//
//  ThirdView.swift
//  Test
//
//  Created by 최민규 on 2023/04/16.
//

import SwiftUI

struct ThirdView: View {
    @EnvironmentObject var globalStore: GlobalStore
    var body: some View {
        Button("Hey"){
            globalStore.isOn.toggle()
        }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView().environmentObject(GlobalStore())
    }
}
