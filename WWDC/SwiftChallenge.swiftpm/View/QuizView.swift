//
//  QuizView.swift
//  SwiftChallenge
//
//  Created by 최민규 on 2023/04/10.
//

import SwiftUI

struct QuizView: View {
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .fill(Color.clear)
                .background(RoundedCorners(color: .white, tl: 40, tr: 0, bl: 40, br: 0))
                .frame(minWidth: 480, idealWidth: 480, maxWidth: 480, minHeight: 802, idealHeight: 802, maxHeight: nil, alignment: .topTrailing)
                .shadow(radius: 8, x: -8, y: 8)
        }
    }
}
                
                struct QuizView_Previews: PreviewProvider {
                    static var previews: some View {
                        QuizView()
                    }
                }
