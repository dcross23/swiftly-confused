//
//  ProfileViewController.swift
//  EjercicioMVVM
//
//  Created by DAA on 15/10/25.
//

import UIKit

class ProfileViewController: UIViewController{
    
    private var viewModel = ProfileViewModel()
    
    @IBOutlet weak var statsButton: UIButton!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var bioLabel: UILabel!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        configureUI()
    }
    
    private func configureUI(){
        title = "Perfil"
        nameLabel.text = viewModel.nameText
        usernameLabel.text = viewModel.userNameText
        bioLabel.text = viewModel.bioText
    }
    
    @IBAction func statsButtonAction(_ sender: Any) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "showStats" {
            let destinationVC = segue.destination as! StatsViewController
            destinationVC.viewModel = StatsViewModel(user: viewModel.user)
        }
    }
    
}
