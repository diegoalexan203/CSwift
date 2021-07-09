//
//  PokemonHomeViewController.swift
//  CondorDiego8a
//
//  Created by Diego on 7/07/21.
//

import UIKit
import RxSwift

class PokemonHomeViewController: UIViewController {
    var pokemons = [Poke] ()
    let disposeBag = DisposeBag()
    let pokemonHomeViewModel = PokemonHomeViewModel()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bin()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    
    func bin(){
        pokemonHomeViewModel.output.pokemons.subscribe(onNext: {poke in
            if ((poke != nil) ) {
                for pokemon in poke?.results ?? []  {
                    self.pokemons.append(pokemon)
                    self.updateTable()
                }
            }
        })
    }
    
    func updateTable() {
        let indexPath = IndexPath(row: pokemons.count - 1, section: 0)

        tableView.beginUpdates()
        tableView.insertRows(at: [indexPath], with: .automatic)
        tableView.endUpdates()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DetailsSegue" {
            let postsVC = segue.destination as! DetailsPokemonViewController
            postsVC.idPokemon = sender as! String
        }
    }

}

extension PokemonHomeViewController: UITableViewDataSource, UITableViewDelegate	{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.pokemons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PokemonCell", for: indexPath) as! PokemonCell
        let pokemon = pokemons[indexPath.row]
        cell.nameLabel?.text = pokemon.name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let pokemon = pokemons[indexPath.row]
        var idPokemonSelected = pokemon.url.dropFirst(34)
        idPokemonSelected = idPokemonSelected.dropLast(1)
        performSegue(withIdentifier: "DetailsSegue", sender: idPokemonSelected)
    }
    
}
