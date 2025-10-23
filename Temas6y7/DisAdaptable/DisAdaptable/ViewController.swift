//
//  ViewController.swift
//  DisAdaptable
//
//  Created by DAA on 15/10/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var botongrid: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func botongridaccion(_ sender: Any) {
        performSegue(withIdentifier: "gridsegue", sender: self)
    }
    
}

