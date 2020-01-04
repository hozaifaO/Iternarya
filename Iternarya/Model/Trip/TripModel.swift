//
//  TripModel.swift
//  Iternarya
//
//  Created by Hozaifa Owaisi on 1/4/20.
//  Copyright © 2020 Hozaifa. All rights reserved.
//

import Foundation

class TripModel {
    var title: String
    let id: UUID
    
    init(title:String) {
        id = UUID()
        self.title = title
    }
}
