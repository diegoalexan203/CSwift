//
//  MoveCell.swift
//  CondorDiego8a
//
//  Created by Diego on 9/07/21.
//

import Foundation
import UIKit

class MoveCell: UITableViewCell {
  
 
    @IBOutlet weak var nameMoveLabel: UILabel!
    
    func setCell(move: Move) {
        nameMoveLabel.text = move.move.name
    }
    
}
