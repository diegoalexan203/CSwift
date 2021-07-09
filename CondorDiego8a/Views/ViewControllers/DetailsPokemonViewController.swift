//
//  DetailsPokemonViewController.swift
//  CondorDiego8a
//
//  Created by Diego on 8/07/21.
//

import Foundation
import UIKit
import RxSwift

class DetailsPokemonViewController:  UIViewController{
    var idPokemon: String = ""
    let disposeBag = DisposeBag()
    let detailsPokemonViewModel = DetailsPokemonViewModel()
    var moves = [Move]()
    
    @IBOutlet weak var movesTableView: UITableView!
    @IBOutlet weak var heigthLabel: UILabel!
    @IBOutlet weak var weigthLabel: UILabel!
    @IBOutlet weak var pokedeskLabel: UILabel!
    @IBOutlet weak var namePokemonLabel: UILabel!
    @IBOutlet weak var typePokemonLabel: UILabel!
    @IBOutlet weak var pokeImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        bin()
    }
    
    func bin(){
        detailsPokemonViewModel.input.idPokemon.accept(idPokemon);
        detailsPokemonViewModel.output.pokemonDetails.subscribe(onNext: { detail in
            if detail != nil {
                self.setLabels(detail: detail!)
            }
        }).disposed(by: disposeBag)
    }
    
    func setLabels(detail: PokemonDetailsResponse){
        pokeImageView.load(urlString: detail.sprites!.frontDefault)
        namePokemonLabel.text = "Name Pokemon: " + detail.name
        typePokemonLabel.text = "Type of Pokemon: " + detail.types![0].type.name
        pokedeskLabel.text = "Number in Pokedex " + detail.order.description
        weigthLabel.text = "Weigth of Pokemon: " + detail.weight.description
        heigthLabel.text = "Heigth of Pokemon: " + detail.height.description
        for mov in detail.moves!{
            self.moves.append(mov)
            updateTable()
        }
        
    }
    
    func updateTable() {
        let indexPath = IndexPath(row: moves.count - 1, section: 0)

        movesTableView.beginUpdates()
        movesTableView.insertRows(at: [indexPath], with: .automatic)
        movesTableView.endUpdates()
    }
}

extension DetailsPokemonViewController: UITableViewDataSource, UITableViewDelegate    {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moves.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MoveCell", for: indexPath) as! MoveCell
        let mov = moves[indexPath.row]
        cell.nameMoveLabel?.text = mov.move.name
        return cell
    }
    
    
}

extension UIImageView {
    func load(urlString : String) {
        guard let url = URL(string: urlString)else {
            return
        }
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}

