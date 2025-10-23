//
//  ViewController.swift
//  NavContPrueba
//
//  Created by DAA on 10/10/25.
//

import UIKit

class BlueViewController: UIViewController {

    @IBOutlet weak var boton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Azul"
    }


    @IBAction func irAMorado(_ sender: Any) {
        
        let moradoView = PurpleViewController()
        
        navigationController?.pushViewController(moradoView, animated: true)
    }
}

