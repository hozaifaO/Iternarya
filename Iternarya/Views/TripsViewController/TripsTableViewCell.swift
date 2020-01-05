//
//  TripsTableViewCell.swift
//  Iternarya
//
//  Created by Hozaifa Owaisi on 1/4/20.
//  Copyright © 2020 Hozaifa. All rights reserved.
//

import UIKit

class TripsTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var cardView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cardView.addRoundCorderandShadow()
        titleLabel.font = UIFont(name: Theme.mainFontName, size: 35)
        titleLabel.textColor = Theme.FontColor
        cardView.backgroundColor = Theme.CellBackGroundColor
        
    }
    
    func setup(model: TripModel) {
        titleLabel.text = model.title
    }
}
