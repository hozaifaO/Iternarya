//
//  ExtUIView.swift
//  Iternarya
//
//  Created by Hozaifa Owaisi on 1/5/20.
//  Copyright © 2020 Hozaifa. All rights reserved.
//

import UIKit

extension UIView {

    func addRoundCorderandShadow() {
        layer.shadowOpacity = 1
        layer.shadowOffset = CGSize.zero
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.cornerRadius = 10
    }

}
