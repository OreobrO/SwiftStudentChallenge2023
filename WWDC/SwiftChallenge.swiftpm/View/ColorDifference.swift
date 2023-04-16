////
////  File.swift
////
////
////  Created by 최민규 on 2023/04/16.
////
//
//
import SwiftUI

func colorDifference(_ color1: Color, _ color2: Color) -> CGFloat {
    // Get the hue, saturation, and brightness values of each color
    var hue1: CGFloat = 0, saturation1: CGFloat = 0, brightness1: CGFloat = 0
    var hue2: CGFloat = 0, saturation2: CGFloat = 0, brightness2: CGFloat = 0
    UIColor(color1).getHue(&hue1, saturation: &saturation1, brightness: &brightness1, alpha: nil)
    UIColor(color2).getHue(&hue2, saturation: &saturation2, brightness: &brightness2, alpha: nil)

    // Calculate the difference in hue, saturation, and brightness
    let hueDifference = abs(hue1 - hue2)
    let saturationDifference = abs(saturation1 - saturation2)
    let brightnessDifference = abs(brightness1 - brightness2)
    
    // Calculate the total difference using a weighted average
    let totalDifference = hueDifference * 2 + saturationDifference + brightnessDifference

    // Return the total difference
    return totalDifference * 1000
}
