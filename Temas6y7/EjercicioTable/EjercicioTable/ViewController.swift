//
//  ViewController.swift
//  EjercicioTable
//
//  Created by DAA on 16/10/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var table: UITableView!
    
    struct Sunset {
        let title: String
        let imageName: String
    }
    
    //comentar para mvvm
    let data: [Sunset] = [
        Sunset(title: "Imagen 1", imageName: "atardecer1"),
        Sunset(title: "Foto 2", imageName: "atardecer2"),
        Sunset(title: "Atardecer 3", imageName: "atardecer3"),
        Sunset(title: "Imagen 4", imageName: "atardecer4"),
        Sunset(title: "Foto 5", imageName: "atardecer5"),
    ]
    
    //private let viewModel = SunsetViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
        
        //viewModel.loadSunsets()
        //table.reloadData()
    }

    //Cuantas filas va a haber (cuantos elementos)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
        //return viewModel.numberOfItems()
    }
    
    //Que se va a cargar en cada fila. Se crea una CustomTableViewCell, se cargan los datos y se devuelve
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sunset = data[indexPath.row]
        //let sunset = viewModel.item(at: indexPath.row)
        
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.label.text = sunset.title
        cell.iconImageView.image = UIImage(named: sunset.imageName)
        return cell
    }

    //Cambiar altura de la celda
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 200
    }
}

