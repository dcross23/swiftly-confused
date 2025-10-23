//
//  SecondViewController.swift
//  Vista
//
//  Created by DAA on 9/10/25.
//

import UIKit

class SecondViewController: UIViewController {
    
    var receivedText: String?

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var boton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = receivedText ?? "Sin texto"
    }

    @IBAction func cerrarVentana(_ sender: Any) {
        dismiss(animated: true)
    }
    
}
