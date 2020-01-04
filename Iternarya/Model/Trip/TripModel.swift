//
//  TripModel.swift
//  Iternarya
//
//  Created by Hozaifa Owaisi on 1/4/20.
//  Copyright © 2020 Hozaifa. All rights reserved.
//

import Foundation

class TripModel {
    var title: String!
    var id: String!
    
    init(title:String) {
        id = UUID().uuidString
        self.title = title
    }
}
