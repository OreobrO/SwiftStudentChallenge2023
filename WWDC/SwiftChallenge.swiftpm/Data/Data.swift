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
    title: ["Nebamun Hunting\nFowl in the Marshes\n(1,350 BCE)", "Birth Of Venus\n(1485)", "The Scream\n(1895)", "Barcelona Pavilion\n(1929)", "Centre Pompidou\n(1977)"],
    author: ["Unknown", "Sandro Botticelli", "Edvard Munch", "Ludwig Mies van der Rohe", "Renzo Piano, Richard Rogers and Gianfranco Franchini"],
    detail: ["fresco painting", "Tempera on Canvas", "Oil, tempera, pastel and crayon on cardboard", "Spain", "Paris"],
    color1: [
        Color(red: 93/255, green: 145/255, blue: 165/255),
        Color(red: 158/255, green: 174/255, blue: 126/255),
        Color(red: 204/255, green: 71/255, blue: 43/255),
        Color(red: 165/255, green: 182/255, blue: 197/255),
        Color(red: 149/255, green: 52/255, blue: 52/255)
    ],
    color2: [
        Color(red: 186/255, green: 59/255, blue: 16/255),
        Color(red: 136/255, green: 162/255, blue: 161/255),
        Color(red: 238/255, green: 194/255, blue: 34/255),
        Color(red: 177/255, green: 159/255, blue: 157/255),
        Color(red: 200/255, green: 200/255, blue: 200/255)        ],
    color3: [
        Color(red: 239/255, green: 235/255, blue: 216/255),
        Color(red: 213/255, green: 142/255, blue: 58/255),
        Color(red: 130/255, green: 193/255, blue: 212/255),
        Color(red: 102/255, green: 118/255, blue: 56/255),
        Color(red: 38/255, green: 48/255, blue: 63/255)        ],
    PopImage: ["PopImage_001", "PopImage_002", "PopImage_003", "PopImage_004", "PopImage_005"],
    PopTitle: ["PopTitle_001", "PopTitle_002", "PopTitle_003", "PopTitle_004", "PopTitle_005"],
    PopDetail: [
        
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas consectetur lorem at consequat porttitor. Nam auctor turpis et purus cursus vehicula quis et magna. Sed non risus nec quam molestie congue eu et neque. Suspendisse ipsum est, maximus a luctus vel, maximus vel libero. Nullam malesuada fringilla massa, a pellentesque tellus tristique at. Sed a facilisis dolor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas consectetur lorem at consequat porttitor. Nam auctor turpis et purus cursus vehicula quis et magna. Sed non risus nec quam molestie congue eu et neque. Suspendisse ipsum est, maximus a luctus vel, maximus vel libero. Nullam malesuada fringilla massa, a pellentesque tellus tristique at. Sed a facilisis dolor.  ",
        
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas consectetur lorem at consequat porttitor. Nam auctor turpis et purus cursus vehicula quis et magna. Sed non risus nec quam molestie congue eu et neque. Suspendisse ipsut", "PopDetail_003", "PopDetail_004", "PopDetail_005"]
)
/* Image License
 
[Image_001]
> ImageName: Nebamun Hunting Fowl in the Marshes
> Author: Unknown
> Published: before 1350 BCE
> Reproduced: 19 June 2015 (by Brandmeister)
> Format: JPG
> SiteName: Wikipedia
> URL: https://commons.wikimedia.org/wiki/File:Tomb_of_Nebamun.jpg
> License: This is a faithful photographic reproduction of a two-dimensional, public domain work of art. The work of art itself is in the public domain for the following reason: This work is in the public domain in its country of origin and other countries and areas where the copyright term is the author's life plus 100 years or fewer.
 
 [Image_002]
 > ImageName: Birth Of Venus(1485)
 > Author: Sandro Botticelli(Italian, 1444-1510)
 > Published: 1485
 > Format: JPG
 > SiteName: Artvee
 > URL: https://artvee.com/dl/birth-of-venus#00
 > License: All public domain files can be freely used for personal and commercial projects. The Artist died in 1944 so this work is in the public domain in its country of origin and other countries where the copyright term is the Artist's life plus 70 years or fewer.
 
 [Image_003]
 > ImageName: The Scream(1895)
 > Author: Edvard Munch(Norwegian, 1863-1944)
 > Published: 1895
 > Format: JPG
 > SiteName: Artvee
 > URL: https://artvee.com/dl/the-scream-2#00
 > License: All public domain files can be freely used for personal and commercial projects. The Artist died in 1944 so this work is in the public domain in its country of origin and other countries where the copyright term is the Artist's life plus 70 years or fewer.
 
 [Image_004]
 > ImageName: Barcelona Pavilion, Spain
 > Author: Picture taken by Lisa Therese
 > Detail: Picture of an architecture designed by Ludwig Mies van der Rohe in 1929
 > Published: 28 June 2019
 > Format: JPG
 > SiteName: Unsplash
 > URL: https://unsplash.com/ko/사진/1gmxy_9uMC0
 > License: Unsplash photos are made to be used freely. Our license reflects that. All photos can be downloaded and used for free,  Commercial and non-commercial purposes, No permission needed (though attribution is appreciated!)
 
 [Image_005]
 > ImageName: Centre Pompidou, Paris
 > Author: Picture taken by Mingyu Choi
 > Detail: Picture of an architecture designed by Renzo Piano, Richard Rogers and Gianfranco Franchini
 > Published: 30 July 2017
 > Format: JPG
 > SiteName: N/A
 > URL: N/A
 > License: Photo taken by myself on July 2017. Free to use commercial and non-commercial purposes. No permission needed
 
 [PopImage_001]
 > ImageName:
 > Author:
 > Published:
 > Reproduced:
 > Format:
 > SiteName:
 > URL:
 > License:
 
 [PopImage_002]
 > ImageName:
 > Author:
 > Published:
 > Reproduced:
 > Format:
 > SiteName:
 > URL:
 > License:
 
 [PopImage_003]
 > ImageName:
 > Author:
 > Published:
 > Reproduced:
 > Format:
 > SiteName:
 > URL:
 > License:
 
 [PopImage_004]
 > ImageName:
 > Author:
 > Published:
 > Reproduced:
 > Format:
 > SiteName:
 > URL:
 > License:
 
 [PopImage_005]
 > ImageName:
 > Author:
 > Published:
 > Reproduced:
 > Format:
 > SiteName:
 > URL:
 > License:
 
*/
