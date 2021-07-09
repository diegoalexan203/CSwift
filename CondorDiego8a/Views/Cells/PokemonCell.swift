//
//  PokemonCell.swift
//  CondorDiego8a
//
//  Created by Diego on 8/07/21.
//

import Foundation
import UIKit

class PokemonCell: UITableViewCell {
  
    @IBOutlet weak var nameLabel: UILabel!
    
    func setCell(pokemon: Poke) {
        nameLabel.text = pokemon.name       
    }
    
}
