//
//  PlayerDetailViewController.swift
//  tableview
//
//  Created by Bipin Pandey on 6/28/17.
//  Copyright © 2017 PlanetInnovation. All rights reserved.
//

import UIKit

class PlayerDetailViewController: UIViewController {
    var player : Player!
    
    

    @IBOutlet var playerImage: UIImageView!
    @IBOutlet var playerName: UILabel!
    @IBOutlet var playerJersynum: UILabel!
    @IBOutlet var playerGoals: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playerImage.image = player.playerPic
        playerName.text = player.name
        playerJersynum.text = player.jersynum
        playerGoals.text = player.goals
        
        
       

        // Do any additional setup after loading the view.
    }
        
      

}
