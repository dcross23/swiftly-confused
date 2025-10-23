//
//  SunsetViewModel.swift
//  EjercicioTable
//
//  Created by DAA on 16/10/25.
//

import Foundation

class SunsetViewModel {
    
    private var sunsets: [Sunset] = []
    
    func loadSunsets() {
        // Aquí podrías reemplazar con una carga real desde red o disco
        sunsets = [
            Sunset(title: "Imagen 1", imageName: "atardecer1"),
            Sunset(title: "Foto 2", imageName: "atardecer2"),
            Sunset(title: "Atardecer 3", imageName: "atardecer3"),
            Sunset(title: "Imagen 4", imageName: "atardecer4"),
            Sunset(title: "Foto 5", imageName: "atardecer5"),
        ]
    }
    
    func numberOfItems() -> Int {
        return sunsets.count
    }
    
    func item(at index: Int) -> Sunset {
        return sunsets[index]
    }
}

