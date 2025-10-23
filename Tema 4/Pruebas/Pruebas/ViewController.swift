//
//  ViewController.swift
//  Pruebas
//
//  Created by DAA on 8/10/25.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {


    @IBOutlet weak var boton: UIButton!
    @IBOutlet weak var switchbutton: UISwitch!
    @IBOutlet weak var sliderbutton: UISlider!
    @IBOutlet weak var consola: UITextView!
    
    @IBOutlet weak var campotexto: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let boton2 = UIButton(type: .system)
        boton2.setTitle("Boton codigo", for: .normal)
        boton2.setTitle("Presionando...", for: .highlighted)
        boton2.setTitleColor(.white, for: .normal)
        boton2.backgroundColor = .systemBlue
        boton2.layer.cornerRadius = 10
        
        boton2.frame = CGRect(x:130, y:230, width: 150, height: 50)
        boton2.addTarget(self, action: #selector(boton2action), for: .touchUpInside)
        
        view.addSubview(boton2)
    }
    
    @objc func boton2action() {
        let texto = "Boton2 pulsado"
        consola.text += "\(texto) \n"
    }

    @IBAction func botonaction(_ sender: Any) {
        let texto = "Boton pulsado"
        consola.text += "\(texto) \n"
    }
    
    
    @IBAction func switchaction(_ sender: Any) {
        let texto = switchbutton.isOn ? "ON" : "OFF"
        consola.text += "Switch: \(texto) \n"
    }
    
    @IBAction func slideraction(_ sender: Any) {
        let texto = sliderbutton.value
        consola.text += "Slider: \(texto) \n"
    }
    
    @IBAction func campotextoaction(_ sender: Any) {
        let texto = campotexto.text ?? ""
        consola.text += "Campo texto: \(texto) \n"
    }
}

