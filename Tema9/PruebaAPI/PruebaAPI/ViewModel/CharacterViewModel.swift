//
//  CharacterViewModel.swift
//  PruebaAPI
//
//  Created by DAA on 19/10/25.
//

import Foundation

class CharacterViewModel {
    private var characters: [Character] = []
    
    struct CharactersResponse: Codable {
        let results: [Character]
    }
    
    /*
    func loadCharacters() {
        // 1️⃣ Crear la URL
        guard let url = URL(string: "https://rickandmortyapi.com/api/character") else {
            print("URL inválida")
            return
        }

        // 2️⃣ Hacer la petición HTTP
        URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            
            // 3️⃣ Comprobar errores
            if let error = error {
                print("Error: \(error.localizedDescription)")
                return
            }
            
            // 4️⃣ Comprobar que hay datos
            guard let data = data else {
                print("No se recibieron datos")
                return
            }
            
            // 5️⃣ Decodificar el JSON directamente en structs
            do {
                let decoded = try JSONDecoder().decode(CharactersResponse.self, from: data)
                self?.characters = decoded.results
                print("Cargados \(decoded.results.count) personajes")
            } catch {
                print("Error al decodificar: \(error)")
            }
            
        }.resume()
    }
     */
    
    func loadCharacters(completion: @escaping () -> Void) {
        guard let url = URL(string: "https://rickandmortyapi.com/api/character") else { return }
        
        URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            if let error = error {
                print("Error: \(error.localizedDescription)")
                return
            }
            guard let data = data else { return }
            
            do {
                let decoded = try JSONDecoder().decode(CharactersResponse.self, from: data)
                self?.characters = decoded.results
                print("Cargados \(decoded.results.count) personajes")
                
                completion() // Avisamos que los datos ya están listos
            } catch {
                print("Error al decodificar: \(error)")
            }
        }.resume()
    }


    
    func numberOfItems() -> Int{
        return characters.count
    }
    
    func item(at index: Int) -> Character{
        return characters[index]
    }
}
