//
//  File.swift
//
//
//  Created by 최민규 on 2023/04/15.
//

import Foundation
import SwiftUI

struct Info {
    let image: [String]
    let title: [String]
    let author: [String]
    let detail: [String]
    let color1: [Color]
    let color2: [Color]
    let color3: [Color]
    let PopImage: [String]
    let PopTitle: [String]
//    let PopDetail: [String]
    let PopDetailImage: [String]
    
}

let info = Info(
    image: ["Image_001", "Image_002", "Image_003", "Image_004", "Image_005"],
    title: ["Nebamun Hunting\nFowl in the Marshes\n(1,350 BCE)", "Birth Of Venus\n(1485)", "The Scream\n(1895)", "Barcelona Pavilion\n(1929)", "Centre Pompidou\n(1977)"],
    author: ["Unknown", "Sandro Botticelli", "Edvard Munch", "Ludwig Mies van der Rohe", "Renzo Piano, Richard Rogers and Gianfranco Franchini"],
    detail: ["fresco painting", "Tempera on Canvas", "Oil, tempera, pastel and crayon on cardboard", "Spain", "Paris"],
    color1: [
        Color(red: 93/255, green: 145/255, blue: 165/255),
        Color(red: 158/255, green: 174/255, blue: 126/255),
        Color(red: 204/255, green: 71/255, blue: 43/255),
        Color(red: 165/255, green: 182/255, blue: 197/255),
        Color(red: 149/255, green: 52/255, blue: 52/255),
        Color(red: 165/255, green: 136/255, blue: 104/255)],
    color2: [
        Color(red: 186/255, green: 59/255, blue: 16/255),
        Color(red: 136/255, green: 162/255, blue: 161/255),
        Color(red: 238/255, green: 194/255, blue: 34/255),
        Color(red: 177/255, green: 159/255, blue: 157/255),
        Color(red: 200/255, green: 200/255, blue: 200/255),
        Color(red: 130/255, green: 126/255, blue: 83/255)],
    color3: [
        Color(red: 239/255, green: 235/255, blue: 216/255),
        Color(red: 213/255, green: 142/255, blue: 58/255),
        Color(red: 130/255, green: 193/255, blue: 212/255),
        Color(red: 102/255, green: 118/255, blue: 56/255),
        Color(red: 103/255, green: 97/255, blue: 65/255),
        Color(red: 228/255, green: 225/255, blue: 220/255)],
    PopImage: ["PopImage_001", "PopImage_002", "PopImage_003", "PopImage_004", "PopImage_005"],
    PopTitle: ["Egyption Blue\nThe first pigment", "Golden Sheen\nHeavenly Beauty", "Pastel & Cayon\nRough texture", "Floating Roof on\nWalls and glasses", "Inside-Out\nColor of function"],
    PopDetailImage: ["Text_001", "Text_002", "Text_003", "Text_004", "Text_005"]
)
