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
        title: ["ThisisTitle1", "ThisisTitle2", "ThisisTitle3", "ThisisTitle4", "ThisisTitle5"],
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
        PopImage: ["PopImage_001", "PopImage_002", "PopImage_003", "PopImage_004", "PopImage_005"],
        PopTitle: ["PopTitle_001", "PopTitle_002", "PopTitle_003", "PopTitle_004", "PopTitle_005"],
        PopDetail: [
            
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas consectetur lorem at consequat porttitor. Nam auctor turpis et purus cursus vehicula quis et magna. Sed non risus nec quam molestie congue eu et neque. Suspendisse ipsum est, maximus a luctus vel, maximus vel libero. Nullam malesuada fringilla massa, a pellentesque tellus tristique at. Sed a facilisis dolor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas consectetur lorem at consequat porttitor. Nam auctor turpis et purus cursus vehicula quis et magna. Sed non risus nec quam molestie congue eu et neque. Suspendisse ipsum est, maximus a luctus vel, maximus vel libero. Nullam malesuada fringilla massa, a pellentesque tellus tristique at. Sed a facilisis dolor.  ",
                    
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas consectetur lorem at consequat porttitor. Nam auctor turpis et purus cursus vehicula quis et magna. Sed non risus nec quam molestie congue eu et neque. Suspendisse ipsut", "PopDetail_003", "PopDetail_004", "PopDetail_005"]
    )
    
    
