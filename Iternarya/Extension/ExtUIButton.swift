//
//  ExtUIButton.swift
//  Iternarya
//
//  Created by Hozaifa Owaisi on 1/5/20.
//  Copyright © 2020 Hozaifa. All rights reserved.
//

import UIKit

extension UIButton {
    
    func customFloatingBtn() {
        backgroundColor = Theme.TintColor
        layer.cornerRadius = (frame.height / 2)
        layer.shadowOpacity = 0.25
        layer.shadowRadius = 5
        layer.shadowOffset = CGSize(width: 0, height: 10)
    }
}
