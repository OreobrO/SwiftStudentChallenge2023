
import SwiftUI

func getColorDifferenceRGB(_ color1: Color, _ color2: Color) -> CGFloat {
    // Get the hue, saturation, and brightness values of each color
    var red1: CGFloat = 0, green1: CGFloat = 0, blue1: CGFloat = 0, alpha1: CGFloat = 0
    var red2: CGFloat = 0, green2: CGFloat = 0, blue2: CGFloat = 0, alpha2: CGFloat = 0
    UIColor(color1).getRed(&red1, green: &green1, blue: &blue1, alpha: &alpha1)
    UIColor(color2).getRed(&red2, green: &green2, blue: &blue2, alpha: &alpha2)

    // Calculate the difference in hue, saturation, and brightness
    let redDifference = abs(red1 - red2)
    let greenDifference = abs(green1 - green2)
    let blueDifference = abs(blue1 - blue2)
//    let alphaDifference = abs(alpha1 - alpha2)
    
    // Calculate the total difference using a weighted average
    let totalDifferenceRGB = pow(pow(redDifference, 2) + pow(greenDifference, 2) + pow(blueDifference, 2), 0.5)

    // Return the total difference
    return totalDifferenceRGB * 100
}
