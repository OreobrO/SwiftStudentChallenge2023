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
    let popImage: [String]
    let popTitle: [String]
    let popDetail: [String]
    
}

     let info = Info(
        image: ["Image_001", "Image_002", "Image_003", "Image_004", "Image_005"],
        title: ["Title 1", "Title 2", "Title 3", "Title 4", "Title 5"],
        author: ["Author 1", "Author 2", "Author 3", "Author 4", "Author 5"],
        detail: ["Detail 1", "Detail 2", "Detail 3", "Detail 4", "Detail 5"],
        color1: [
            Color(red: 255/255, green: 0/255, blue: 0/255),
            Color(red: 255/255, green: 255/255, blue: 0/255),
            Color(red: 255/255, green: 0/255, blue: 255/255),
            Color(red: 0/255, green: 255/255, blue: 255/255),
            Color(red: 150/255, green: 150/255, blue: 150/255),
        ],
        color2: [
            Color(red: 255/255, green: 0/255, blue: 0/255),
            Color(red: 255/255, green: 255/255, blue: 0/255),
            Color(red: 255/255, green: 0/255, blue: 255/255),
            Color(red: 0/255, green: 255/255, blue: 255/255),
            Color(red: 150/255, green: 150/255, blue: 150/255),
        ],
        color3: [
            Color(red: 255/255, green: 0/255, blue: 0/255),
            Color(red: 255/255, green: 255/255, blue: 0/255),
            Color(red: 255/255, green: 0/255, blue: 255/255),
            Color(red: 0/255, green: 255/255, blue: 255/255),
            Color(red: 150/255, green: 150/255, blue: 150/255),
        ],
        popImage: ["popImage_001", "popImage_002", "popImage_003", "popImage_004", "popImage_005"],
        popTitle: ["popTitle_001", "popTitle_002", "popTitle_003", "popTitle_004", "popTitle_005"],
        popDetail: ["popDetail_001", "popDetail_002", "popDetail_003", "popDetail_004", "popDetail_005"]
    )
    
    
