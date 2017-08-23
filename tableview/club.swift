//
//  club.swift
//  tableview
//
//  Created by Bipin Pandey on 6/27/17.
//  Copyright © 2017 PlanetInnovation. All rights reserved.
//

import UIKit
import RealmSwift

class Club : Object  {
  dynamic var name : String = ""
  dynamic var logo : String = ""
    var clubPic : UIImage? {
        return UIImage(named : logo )
    }
  let players = List<Player>()
}
