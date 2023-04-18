//
//  globalStore.swift
//  SwiftChallenge
//
//  Created by 최민규 on 2023/04/11.
//

import Combine
import SwiftUI

class GlobalStore: ObservableObject {
    
    @Published var colorGray0 = Color(red: 1.0, green: 1.0, blue: 1.0)
    @Published var colorGray1 = Color(red: 0.95, green: 0.95, blue: 0.95)
    @Published var colorGray2 = Color(red: 0.7, green: 0.7, blue: 0.7)
    @Published var bgColor0 = Color(red: 0.8, green: 0.8, blue: 0.8)
    @Published var bgColor1 = Color(red: 0.8, green: 0.8, blue: 0.8)
    @Published var bgColor2 = Color(red: 0.8, green: 0.8, blue: 0.8)
    @Published var bgColor3 = Color(red: 0.8, green: 0.8, blue: 0.8)
    @Published var colorGrades: [Double] = [0, 0, 0]
    @Published var score: [String] = ["", "", ""]
    @Published var brightness1: CGFloat = 1
    @Published var brightness2: CGFloat = 1
    @Published var brightness3: CGFloat = 1
    
}

extension GlobalStore {
    
    func compareColorScore(currentIndex: Int) {
        
        print("비교하기")
        let compareColor1 = getColorDifferenceRGB(bgColor1, info.color1[currentIndex])
        let compareColor2 = getColorDifferenceRGB(bgColor2, info.color2[currentIndex])
        let compareColor3 = getColorDifferenceRGB(bgColor3, info.color3[currentIndex])

        colorGrades = [compareColor1, compareColor2, compareColor3]
        
        for i in 0...2 {
            if colorGrades[i] <= 15 { score[i] = "Perfect!" } else if colorGrades[i]  > 15 && colorGrades[i] <= 40 { score[i] = "Very good!" } else if colorGrades[i] > 40 { score[i] = "Try again" }
        }
        print(colorGrades)
    }
    
    func changeBrightness(currentIndex: Int) -> [CGFloat] {
        
        let colorBrightness = getBrightness(info.color1[currentIndex], info.color2[currentIndex], info.color3[currentIndex])

        return colorBrightness
    }
    
    func getBrightness(_ color1: Color, _ color2: Color, _ color3:Color) -> [CGFloat] {
        // Get the hue, saturation, and brightness values of each color
        var hue1: CGFloat = 0, saturation1: CGFloat = 0, brightness1: CGFloat = 0
        var hue2: CGFloat = 0, saturation2: CGFloat = 0, brightness2: CGFloat = 0
        var hue3: CGFloat = 0, saturation3: CGFloat = 0, brightness3: CGFloat = 0
        UIColor(color1).getHue(&hue1, saturation: &saturation1, brightness: &brightness1, alpha: nil)
        UIColor(color2).getHue(&hue2, saturation: &saturation2, brightness: &brightness2, alpha: nil)
        UIColor(color3).getHue(&hue3, saturation: &saturation3, brightness: &brightness3, alpha: nil)
       
        let colorBrightness: [CGFloat] = [brightness1, brightness2, brightness3]
        
        // Return the total difference
        return colorBrightness
    }
   
}


struct RoundedCorners: View {
    var color: Color = .black
    var tl: CGFloat = 0.0 // top-left radius parameter
    var tr: CGFloat = 0.0 // top-right radius parameter
    var bl: CGFloat = 0.0 // bottom-left radius parameter
    var br: CGFloat = 0.0 // bottom-right radius parameter
    
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                
                let w = geometry.size.width
                let h = geometry.size.height
                
                // We make sure the radius does not exceed the bounds dimensions
                let tr = min(min(self.tr, h/2), w/2)
                let tl = min(min(self.tl, h/2), w/2)
                let bl = min(min(self.bl, h/2), w/2)
                let br = min(min(self.br, h/2), w/2)
                
                path.move(to: CGPoint(x: w / 2.0, y: 0))
                path.addLine(to: CGPoint(x: w - tr, y: 0))
                path.addArc(center: CGPoint(x: w - tr, y: tr), radius: tr, startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)
                path.addLine(to: CGPoint(x: w, y: h - br))
                path.addArc(center: CGPoint(x: w - br, y: h - br), radius: br, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
                path.addLine(to: CGPoint(x: bl, y: h))
                path.addArc(center: CGPoint(x: bl, y: h - bl), radius: bl, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
                path.addLine(to: CGPoint(x: 0, y: tl))
                path.addArc(center: CGPoint(x: tl, y: tl), radius: tl, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)
            }
            .fill(self.color)
            
        }
    }
}


