//
//  SwiftUIView.swift
//  
//
//  Created by 최민규 on 2023/04/13.
//

import SwiftUI

struct ImageTitleView: View {
    var body: some View {
        
        GeometryReader { geometry in
            VStack {
                Spacer()
                //Picture Title View
                Rectangle()
                    .fill(Color.white)
                    .frame(width: geometry.size.width, height: 170)
                
                    .overlay(
                        HStack{
                            VStack(alignment: .leading) {
                                Text("Robert Delaunay").font(.body.bold()).padding(EdgeInsets(top: 16, leading: 12, bottom: 0, trailing: 10)).lineLimit(2)
                                Text("Endless Rhythm(1934)").font(.body.bold()).padding(EdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 10)).lineLimit(3)
                                Text("Oil paint on canvas").font(.body).padding(EdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 10)).lineLimit(2)
                                Spacer()
                            }
                            Spacer()
                        })
                
                Spacer().frame(height: 98)
            }
        }
    }
}

struct ImageTitleView_Previews: PreviewProvider {
    static var previews: some View {
        ImageTitleView()
    }
}
