//
//  ViewController.swift
//  Vista
//
//  Created by DAA on 9/10/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var boton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goToSecondTapped(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let secondVC = storyboard.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        
        secondVC.receivedText = "Hola desde primera pantalla"
        present(secondVC, animated: true)
    }
    
}

