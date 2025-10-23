//
//  StatsViewController.swift
//  EjercicioMVVM
//
//  Created by DAA on 15/10/25.
//

import UIKit

class StatsViewController: UIViewController{
    
    var viewModel: StatsViewModel!
    
    @IBOutlet weak var postsLabel: UILabel!
    @IBOutlet weak var followersLabel: UILabel!
    @IBOutlet weak var followingLabel: UILabel!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        configureUI()
    }
    
    private func configureUI(){
        title = "Estadisticas"
        postsLabel.text = viewModel.postsText
        followersLabel.text = viewModel.followersText
        followingLabel.text = viewModel.followingText
    }
    
}
