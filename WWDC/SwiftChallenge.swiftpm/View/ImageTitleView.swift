//
//  SwiftUIView.swift
//  
//
//  Created by 최민규 on 2023/04/13.
//

import SwiftUI

struct ImageTitleView: View {
   
    @EnvironmentObject var globalStore: GlobalStore
    @Binding var indexNum: Int
    
    var body: some View {
        
        GeometryReader { geometry in
            VStack {
                Spacer()
                //Picture Title View
                RoundedRectangle(cornerRadius: 0)
                    .fill(Color.white)
                    .frame(width: geometry.size.width, height: 170)
                    .opacity(0.6)
                    .overlay(
                        HStack{
                            VStack(alignment: .leading) {
                                Text(info.author[indexNum]).font(Font.custom("Cinzel-Bold", size: 16)).foregroundColor(.black).padding(EdgeInsets(top: 16, leading: 12, bottom: 0, trailing: 10)).lineLimit(3)
                                Text(info.title[indexNum]).font(Font.custom("Cinzel-Bold", size: 16)).foregroundColor(.black).padding(EdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 10)).lineLimit(3)
                                Text(info.detail[indexNum]).font(Font.custom("Cinzel-Medium", size: 16)).foregroundColor(.black).padding(EdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 10)).lineLimit(3)
                                Spacer()
                            }
                            Spacer()
                        })
                
                Spacer().frame(height: 98)
            }
        }
    }
}
//
//struct ImageTitleView_Previews: PreviewProvider {
//    static var previews: some View {
//        ImageTitleView(indexNum: 0).environmentObject(GlobalStore())
//    }
////}
