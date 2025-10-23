//
//  SecondViewController.swift
//  InjNoModal
//
//  Created by DAA on 10/10/25.
//

import UIKit

class SecondViewController: UIViewController {
    var info: String?
    
    @IBOutlet weak var boton: UIButton!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label.text = info ?? "No hay datoss"
    }

    @IBAction func regresarVentana(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}
