//
//  pokemon.swift
//  pokedex
//
//  Created by Mathusan Selvarajah on 2017-07-13.
//  Copyright © 2017 Mathusan Selvarajah. All rights reserved.
//

import Foundation

class Pokemon{
    
    private var _name: String!
    private var _pokedexId: Int!
    
    var name: String{
        
        return _name
    }
    
    var pokedexId: Int{
        return _pokedexId
    }
    
    init(name: String, pokedexId: Int){
        self._name = name
        self._pokedexId = pokedexId
    }
}
