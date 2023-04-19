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
    let PopDetail: [String]
    
}

     let info = Info(
        image: ["Image_001", "Image_002", "Image_003", "Image_004", "Image_005"],
        title: ["Tomb of Nebamun\n(1,350 BCE)", "ThisisTitle2", "ThisisTitle3", "ThisisTitle4", "ThisisTitle5"],
        author: ["Unknown", "Author 2", "Author 3", "Author 4", "Author 5"],
        detail: ["fresco painting", "Detail 2", "Detail 3", "Detail 4", "Detail 5"],
        color1: [
            Color(red: 93/255, green: 145/255, blue: 165/255),
            Color(red: 158/255, green: 174/255, blue: 126/255),
            Color(red: 204/255, green: 71/255, blue: 43/255),
            Color(red: 59/255, green: 76/255, blue: 71/255),
            Color(red: 173/255, green: 27/255, blue: 19/255)
        ],
        color2: [
            Color(red: 186/255, green: 59/255, blue: 16/255),
            Color(red: 136/255, green: 162/255, blue: 161/255),
            Color(red: 238/255, green: 194/255, blue: 34/255),
            Color(red: 168/255, green: 162/255, blue: 152/255),
            Color(red: 200/255, green: 200/255, blue: 200/255)        ],
        color3: [
            Color(red: 239/255, green: 235/255, blue: 216/255),
            Color(red: 213/255, green: 142/255, blue: 58/255),
            Color(red: 130/255, green: 193/255, blue: 212/255),
            Color(red: 165/255, green: 160/255, blue: 164/255),
            Color(red: 133/255, green: 188/255, blue: 228/255)        ],
        PopImage: ["PopImage_001", "PopImage_002", "PopImage_003", "PopImage_004", "PopImage_005"],
        PopTitle: ["PopTitle_001", "PopTitle_002", "PopTitle_003", "PopTitle_004", "PopTitle_005"],
        PopDetail: [
            
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas consectetur lorem at consequat porttitor. Nam auctor turpis et purus cursus vehicula quis et magna. Sed non risus nec quam molestie congue eu et neque. Suspendisse ipsum est, maximus a luctus vel, maximus vel libero. Nullam malesuada fringilla massa, a pellentesque tellus tristique at. Sed a facilisis dolor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas consectetur lorem at consequat porttitor. Nam auctor turpis et purus cursus vehicula quis et magna. Sed non risus nec quam molestie congue eu et neque. Suspendisse ipsum est, maximus a luctus vel, maximus vel libero. Nullam malesuada fringilla massa, a pellentesque tellus tristique at. Sed a facilisis dolor.  ",
                    
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas consectetur lorem at consequat porttitor. Nam auctor turpis et purus cursus vehicula quis et magna. Sed non risus nec quam molestie congue eu et neque. Suspendisse ipsut", "PopDetail_003", "PopDetail_004", "PopDetail_005"]
    )
    
    
