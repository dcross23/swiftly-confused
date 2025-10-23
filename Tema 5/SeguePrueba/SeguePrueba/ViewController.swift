//
//  ViewController.swift
//  SeguePrueba
//
//  Created by DAA on 10/10/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var botonSegunda: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var ksjdc: UITextField!
    
    

    @IBAction func botonSegundaAction(_ sender: Any) {
        performSegue(withIdentifier: "segundaPantalla", sender: self)
    }
    
}

