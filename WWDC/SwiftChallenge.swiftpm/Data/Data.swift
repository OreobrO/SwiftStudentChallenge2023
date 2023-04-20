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
    image: ["Image_001", "Image_002", "Image_003", "Image_004", "Image_005", "Image_006"],
    title: ["Nebamun Hunting\nFowl in the Marshes\n(1,350 BCE)", "Birth Of Venus\n(1485)", "The Scream\n(1895)", "Barcelona Pavilion\n(1929)", "Centre Pompidou\n(1977)", "Apple Park Visitor Center\n(2017)"],
    author: ["Unknown", "Sandro Botticelli", "Edvard Munch", "Ludwig Mies van der Rohe", "Renzo Piano, Richard Rogers and Gianfranco Franchini", "Foster and Partners"],
    detail: ["fresco painting", "Tempera on Canvas", "Oil, tempera, pastel and crayon on cardboard", "Spain", "Paris", "Cupertino, CA"],
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
    PopImage: ["PopImage_001", "PopImage_002", "PopImage_003", "PopImage_004", "PopImage_005", "PopImage_006"],
    PopTitle: ["Egyption Blue\nThe first pigment", "Golden Sheen\nHeavenly Beauty", "Pastel & Cayon\nRough texture", "Floating Roof on\nWalls and glasses", "Inside-Out\nColor of function", "Floating Roof\nnature inside"],
    PopDetailImage: ["Text_001", "Text_002", "Text_003", "Text_004", "Text_005", "Text_006"]
)

/* Font License
 [Cinzel-Bold, Cinzel-Medium]
 > Font name: Cinzel
 > Author: Natanael Gama
 > Published: 2012
 > Format: TTF
 > SiteName: Google Fonts
 > URL: https://fonts.google.com/specimen/Cinzel/about?query=Cinzel
 > License: These fonts are licensed under the Open Font License. You can use them in your products & projects – print or digital, commercial or otherwise.
 */

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
 
 [Image_006]
 > ImageName: Apple Park, Cupertino, US
 > Author: Severin Stalder
 > Published: 15 Faburary 2020
 > Format: JPG
 > SiteName: Unsplash
 > URL: https://unsplash.com/ko/사진/2j75u62e6Ok
 > License: Unsplash photos are made to be used freely. Our license reflects that. All photos can be downloaded and used for free,  Commercial and non-commercial purposes, No permission needed (though attribution is appreciated!)
 
 [PopImage_001]
 > ImageName: Egyptian blue
 > Author: FK1954
 > Published: 23 March 2010
 > Format: JPG
 > SiteName: Wikipedia
 > URL: https://commons.wikimedia.org/wiki/File:Egyptian_blue.jpg
 > License: Public Domain. I, the copyright holder of this work, release this work into the public domain. This applies worldwide.
 In some countries this may not be legally possible; if so:
 I grant anyone the right to use this work for any purpose, without any conditions, unless such conditions are required by law.
 
 [PopImage_002]
 > ImageName: Gold
 > Author: Kier in Sight
 > Published: 17 April 2021
 > Format: JPG
 > SiteName: Unsplash
 > URL: https://unsplash.com/ko/사진/s99bwKNke8g
 > License: Unsplash photos are made to be used freely. Our license reflects that. All photos can be downloaded and used for free,  Commercial and non-commercial purposes, No permission needed (though attribution is appreciated!)
 
 [PopImage_003]
 > ImageName: Crayons
 > Author: Jorgebarrios
 > Published: 18 October 2007
 > Format: JPG
 > SiteName: Wikipedia
 > URL: https://commons.wikimedia.org/wiki/File:Crayones_cera.jpg
 > License: Public Domain. I, the copyright holder of this work, release this work into the public domain. This applies worldwide.
 In some countries this may not be legally possible; if so:
 I grant anyone the right to use this work for any purpose, without any conditions, unless such conditions are required by law.
 
 [PopImage_004]
 > ImageName: Barcelona Pavilion
 > Author: Tomas Val
 > Published: 6 October 2020
 > Format: JPG
 > SiteName: Unsplash
 > URL: https://unsplash.com/ko/사진/PL66TZWnlws
 > License: Unsplash photos are made to be used freely. Our license reflects that. All photos can be downloaded and used for free,  Commercial and non-commercial purposes, No permission needed (though attribution is appreciated!)
 
 [PopImage_005]
 > ImageName: Centre Pompidou
 > Author: Artem Horovenko
 > Published: 21 August 2021
 > Format: JPG
 > SiteName: Unsplash
 > URL: https://unsplash.com/ko/사진/PokplJPIaaA
 > License: Unsplash photos are made to be used freely. Our license reflects that. All photos can be downloaded and used for free,  Commercial and non-commercial purposes, No permission needed (though attribution is appreciated!)
 
 [PopImage_006]
 > ImageName: Apple Park Tree
 > Author: Josh Withers
 > Published: 05 December 2019
 > Format: JPG
 > SiteName: Unsplash
 > URL: https://unsplash.com/ko/사진/0OlzUl3wqak
 > License: Unsplash photos are made to be used freely. Our license reflects that. All photos can be downloaded and used for free,  Commercial and non-commercial purposes, No permission needed (though attribution is appreciated!)
 
 [PersonImage_001]
 > ImageName: People Avatar Collection
 > Author: callmetak
 > Published: 2021
 > Format: JPG
 > SiteName: Freepik
 > URL: https://www.freepik.com/free-vector/set-male-avatars-vector-illustration-simple-line-drawings-isolated-white-background_19509089.htm#page=2&query=illustrations&position=39&from_view=keyword&track=sph >Image by callmetak on Freepik
 > License: License summary Our license allows you to use the content / For commercial and personal projects /On digital or printed media /For an unlimited number of times and without any time limits /From anywhere in the world /To make modifications and create derivative works
 
 [ConceptImage_001]
 > ImageName: RGB Pixel
 > Author: Umberto
 > Published: 9 July 2019
 > Format: JPG
 > SiteName: Unsplash
 > URL: https://unsplash.com/ko/사진/deb2EnbWPr8
 > License: Unsplash photos are made to be used freely. Our license reflects that. All photos can be downloaded and used for free,  Commercial and non-commercial purposes, No permission needed (though attribution is appreciated!)
 
*/

/* Code License
 [ColorPalleteView1,2,3]
 > Name: Color Picker
 > Author: Haipp
 > Published: 31 May 2021
 > Format: JPG
 > SiteName: Youtube
 > URL: https://www.youtube.com/watch?v=dPQM332JOWY
 
 */

/*
 all the other assets are created by myself, Mingyu Choi
 */
