//
//  PlayerViewController.swift
//  tableview
//
//  Created by Bipin Pandey on 6/27/17.
//  Copyright © 2017 PlanetInnovation. All rights reserved.
//

import UIKit

class PlayerViewController: UIViewController, UITableViewDataSource ,UITableViewDelegate  {
    var club : Club!
    var playerSelected : Player!


    @IBOutlet var clubName: UILabel!
    @IBOutlet var clubLogo: UIImageView!
    @IBOutlet var playerTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        clubName.text = club.name
        clubLogo.image = club.clubPic
        playerTableView.dataSource = self
        playerTableView.delegate = self
      
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return club.players.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = playerTableView.dequeueReusableCell(withIdentifier: "cell") as! PlayerTableViewCell
         let player = club.players[indexPath.row]
         cell.playerImageView.image = player.playerPic
        cell.playerNameLabel.text = player.name
        cell.playerMatchesLabel.text = player.matches
        cell.playerGoalsLabel.text = player.goals
        
        
        return cell
        
        
        
        
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       playerSelected = club.players[indexPath.row]
        performSegue(withIdentifier: "playerInfo", sender: nil)
        
    
      }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "playerInfo" {
            guard let destination = segue.destination as? PlayerDetailViewController else{return}
            destination.player = playerSelected

        }
    }
    
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    



