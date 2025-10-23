//
//  ViewController.swift
//  PruebaAPI
//
//  Created by DAA on 19/10/25.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var table: UITableView!
    private let characterViewModel = CharacterViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.dataSource = self
        table.delegate = self
        
        characterViewModel.loadCharacters { [weak self] in
            DispatchQueue.main.async {
                self?.table.reloadData()
            }
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characterViewModel.numberOfItems()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let character = characterViewModel.item(at: indexPath.row)
        
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CharacterCell
        cell.nameLabel.text = character.name
        cell.statusLabel.text = character.status
        cell.speciesLabel.text = character.species
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}

