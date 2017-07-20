//
//  PokemonDetailVC.swift
//  pokedex
//
//  Created by Mathusan Selvarajah on 2017-07-19.
//  Copyright © 2017 Mathusan Selvarajah. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {
    
    var pokemon: Pokemon!
    
    @IBOutlet weak var nameLbl: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        nameLbl.text = pokemon.name
    }


}
