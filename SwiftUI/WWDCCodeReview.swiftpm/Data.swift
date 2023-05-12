//
//  Data.swift
//  WWDCCodeReview
//
//  Created by 최민규 on 2023/04/22.
//

import Foundation
import SwiftUI

struct Info {
    let image: [String]
    let title: [String]
    let author: [String]
    let detail: [String]
}

let info = Info(
    image: ["Image_001", "Image_002", "Image_003", "Image_004", "Image_005"],
    title: ["Nebamun Hunting\nFowl in the Marshes\n(1,350 BCE)", "Birth Of Venus\n(1485)", "The Scream\n(1895)", "Barcelona Pavilion\n(1929)", "Centre Pompidou\n(1977)"],
    author: ["Unknown", "Sandro Botticelli", "Edvard Munch", "Ludwig Mies van der Rohe", "Renzo Piano, Richard Rogers and Gianfranco Franchini"],
    detail: ["fresco painting", "Tempera on Canvas", "Oil, tempera, pastel and crayon on cardboard", "Spain", "Paris"]
    )
