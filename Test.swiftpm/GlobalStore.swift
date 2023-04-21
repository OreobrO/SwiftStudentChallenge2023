//
//  GlobalStore.swift
//  Test
//
//  Created by 최민규 on 2023/04/16.
//

import Foundation
import Combine

class GlobalStore: ObservableObject {
    @Published var isOn: Bool = false
}
