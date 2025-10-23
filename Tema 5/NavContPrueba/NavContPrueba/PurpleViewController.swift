//
//  PurpleViewController.swift
//  NavContPrueba
//
//  Created by DAA on 10/10/25.
//

import UIKit

class PurpleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Mosrado"
        view.backgroundColor = .systemPurple
        
        let boton = UIButton()
        boton.setTitle("VOlver a azul", for: .normal)
        boton.frame = CGRect(x:100, y:200, width: 200, height: 50)
        boton.tintColor = .white
        boton.addTarget(self, action: #selector(volverAzul), for: .touchUpInside)
        view.addSubview(boton)
    }
    
    @objc func volverAzul() {
        navigationController?.popViewController(animated: true)
    }


}
