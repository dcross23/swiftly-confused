//
//  ViewController.swift
//  InjNoModal
//
//  Created by DAA on 10/10/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var boton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func irSegundaPantalla(_ sender: Any) {
        let secondVC = SecondViewController()
        secondVC.info = "Nuevos datos"
        navigationController?.pushViewController(secondVC, animated: true)
    }
    
}

