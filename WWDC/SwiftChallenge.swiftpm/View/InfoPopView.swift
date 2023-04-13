//
//  SwiftUIView.swift
//  
//
//  Created by 최민규 on 2023/04/11.
//

import SwiftUI

struct InfoView: View {
    var body: some View {

        VStack {
            Spacer().frame(height: 32).edgesIgnoringSafeArea(.top)

            HStack(alignment: .top){
                Rectangle()
                    .fill(Color.clear)
                    .frame(minWidth: 464, idealWidth: 464, maxWidth: 464, minHeight: 770, idealHeight: 770, maxHeight: nil, alignment: .top)
                Rectangle()
                    .fill(Color.clear)
                    .frame(minWidth: 698, idealWidth: 698, maxWidth: nil, minHeight: 300, idealHeight: 300, maxHeight: 300, alignment: .top)
                    .background(RoundedCorners(color: .white, tl: 150, tr: 0, bl: 150, br: 0))
                    .shadow(color: .black.opacity(0.5), radius: 10, x: 10, y: 10)
                    .overlay(
                        HStack(alignment: .bottom) {
                            Circle().fill(Color.yellow).frame(width: 268, height: 268).padding()

                            VStack(alignment: .leading) {
                                Text("This is The Title").font(.largeTitle).bold().padding(EdgeInsets(top: 32, leading: 0, bottom: 0, trailing: 32))
                                Spacer()
                                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas consectetur lorem at consequat porttitor. Nam auctor turpis et purus cursus vehicula quis et magna. Sed non risus nec quam molestie congue eu et neque. Suspendisse ipsum est, maximus a luctus vel, maximus vel libero. Nullam malesuada fringilla massa, a pellentesque tellus tristique at. Sed a facilisis dolor.").font(.body).lineLimit(8).padding(EdgeInsets(top: 0, leading: 0, bottom: 32, trailing: 16))
                            }
                        })
            }
        }
        
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
