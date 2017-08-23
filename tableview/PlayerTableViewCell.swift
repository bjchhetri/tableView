//
//  PlayerTableViewCell.swift
//  tableview
//
//  Created by Bipin Pandey on 6/29/17.
//  Copyright © 2017 PlanetInnovation. All rights reserved.
//

import UIKit

class PlayerTableViewCell: UITableViewCell {


    @IBOutlet var playerImageView: UIImageView!
    @IBOutlet var playerNameLabel: UILabel!
    @IBOutlet var playerMatchesLabel: UILabel!
    @IBOutlet var playerGoalsLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
