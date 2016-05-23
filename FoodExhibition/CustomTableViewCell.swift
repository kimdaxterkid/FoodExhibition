//
//  CustomTableViewCell.swift
//  FoodExhibition
//
//  Created by DavidKim on 5/23/16.
//  Copyright © 2016 Taiwen Jin. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var restaurantImage: UIImageView!
    @IBOutlet weak var restaurantName: UILabel!
    @IBOutlet weak var restaurantLoccation: UILabel!
    @IBOutlet weak var restaurantType: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
