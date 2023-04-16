import SwiftUI

let color1 = Color(red: 1, green: 1, blue: 1)
let color2 = Color(hue: 0.5, saturation: 0.7, brightness: 1.0)
let difference = colorDifference(color1, color2)
print("The difference between \(color1) and \(color2) is \(difference).")

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
    return totalDifference
}
