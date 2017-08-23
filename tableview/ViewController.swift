//
//  ViewController.swift
//  tableview
//
//  Created by Bipin Pandey on 6/27/17.
//  Copyright © 2017 PlanetInnovation. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
    let realm = try! Realm()
    var selectedClub : Club?
    var clubs = [Club]()
    

    @IBAction func buttonPressed(_ sender: UIButton) {
        selectedClub = clubs[sender.tag]
        performSegue(withIdentifier: "showDetail", sender: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
        
        let cr7 = Player()
             cr7.name = "Cristino Ronaldo"
             cr7.jersynum = "7"
             cr7.image  = "cr7"
             cr7.goals = "600"
             cr7.matches = "300"
        
        
        let ramos = Player()
             ramos.name = "Sergio Ramos"
             ramos.jersynum = "5"
             ramos.image = "ramos"
             ramos.goals = "300"
             ramos.matches = "295"
        
        let bale = Player()
            bale.name = "Greath Bale"
            bale.jersynum = "11"
            bale.image = "bale"
            bale.goals  = "500"
            bale.matches  = "280"
        
        let messi = Player()
            messi.name = "Lionel Messi"
            messi.jersynum = "10"
            messi.image  = "messi"
            messi.goals  = "590"
            messi.matches  = "295"
        
        let neymar = Player()
            neymar.name = "Neymar Jr"
            neymar.jersynum = "9"
            neymar.image = "neymar"
            neymar.goals = "500"
            neymar.matches  = ("250")
        
        let saurez = Player()
            saurez.name = "Luis Suarez"
            saurez.jersynum = "11"
            saurez.image =  "saurez"
            saurez.goals  = "495"
            saurez.matches = "290"
        
        
        
        
     
        let rm = Club()
            rm.name = "rm"
            rm.logo = "Real Madrid"
            rm.players.append(cr7)
            rm.players.append(ramos)
            rm.players.append(bale)
        
        
        let fcb = Club()
            fcb.name = "fcb"
            fcb.logo =  "Barcelona"
            fcb.players.append(messi)
            fcb.players.append(neymar)
            fcb.players.append(saurez)
        
        try! realm.write{
            realm.add(rm)
            realm.add(fcb)
            
            
        }
        clubs = Array( realm.objects(Club.self))
        

        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail"{
            guard let destination = segue.destination as? PlayerViewController
            else {return}
            destination.club = selectedClub
        }
    }
}

    




