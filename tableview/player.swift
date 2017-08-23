//
//  player.swift
//  tableview
//
//  Created by Bipin Pandey on 6/27/17.
//  Copyright © 2017 PlanetInnovation. All rights reserved.
//

import UIKit
import RealmSwift
class Player : Object{
    dynamic var name : String = ""
    dynamic var jersynum : String = ""
    dynamic var image : String = ""
    var playerPic : UIImage?{
        return UIImage(named: image)
    }
    dynamic var goals : String = ""
    dynamic var matches : String = ""
    
    
    
    
    
}


