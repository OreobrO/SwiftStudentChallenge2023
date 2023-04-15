//
//  SwiftUIView.swift
//  
//
//  Created by 최민규 on 2023/04/13.
//

import SwiftUI

struct ImageTitleView: View {
    
    @Binding var indexNum: Int
    
    var body: some View {
        
        GeometryReader { geometry in
            VStack {
                Spacer()
                //Picture Title View
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.white)
                    .frame(width: geometry.size.width, height: 170)
                    .opacity(0.6)
                    .overlay(
                        HStack{
                            VStack(alignment: .leading) {
                                Text(info.author[indexNum]).font(.body.bold()).padding(EdgeInsets(top: 16, leading: 12, bottom: 0, trailing: 10)).lineLimit(2)
                                Text(info.title[indexNum]).font(.body.bold()).padding(EdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 10)).lineLimit(3)
                                Text(info.detail[indexNum]).font(.body).padding(EdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 10)).lineLimit(2)
                                Spacer()
                            }
                            Spacer()
                        })
                
                Spacer().frame(height: 98)
            }
        }
    }
}

//struct ImageTitleView_Previews: PreviewProvider {
//    static var previews: some View {
//        ImageTitleView(indexNum: )
//    }
//}
