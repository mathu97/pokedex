//
//  pokemon.swift
//  pokedex
//
//  Created by Mathusan Selvarajah on 2017-07-13.
//  Copyright © 2017 Mathusan Selvarajah. All rights reserved.
//

import Foundation
import Alamofire

class Pokemon{
    
    private var _name: String!
    private var _pokedexId: Int!
    private var _description: String!
    private var _type: String!
    private var _defense: String!
    private var _height: String!
    private var _weight: String!
    private var _attack: String!
    private var _nextEvolutionText: String!
    
    private var _pokemonURL: String!
    
    var name: String{
        
        return _name
    }
    
    var pokedexId: Int{
        return _pokedexId
    }
    
    
    init(name: String, pokedexId: Int){
        
        self._name = name
        self._pokedexId = pokedexId
        
        self._pokemonURL = "\(URL_BASE)\(URL_POKEMON)\(self._pokedexId!)/"
        
        
    }
    
    func downloadPokemonDetail(completed: DownloadComplete){
        
        Alamofire.request(self._pokemonURL).responseJSON { (response) in
            if let dict = response.result.value as? Dictionary<String, AnyObject>{
                
                if let weight = dict["weight"] as? Int {
                    self._weight = "\(weight)"
                }
                
                if let height = dict["height"] as? Int {
                    self._height = "\(height)"
                }
                
                if let stats = dict["stats"] as? [Dictionary<String, AnyObject>] {
                    for statIndex in stats {
                        let statType = statIndex["stat"]?["name"] as? String
                        if statType == "attack"{
                            let attack = statIndex["base_stat"] as? Int
                            self._attack = "\(attack!)"
                        }else if statType == "defense" {
                            let defense = statIndex["base_stat"] as? Int
                            self._defense = "\(defense!)"
                        }
                    }
                    
                }
                
                print(self._weight)
                print(self._height)
                print(self._attack)
                print(self._defense)
            }
            
        }
    }
}
