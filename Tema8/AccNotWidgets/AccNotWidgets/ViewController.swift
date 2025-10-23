//
//  ViewController.swift
//  AccNotWidgets
//
//  Created by DAA on 19/10/25.
//

import UIKit

class ViewController: UIViewController, UNUserNotificationCenterDelegate{

    @IBOutlet weak var holaBoton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Accesibilidad botón hola
        holaBoton.isAccessibilityElement = true
        holaBoton.accessibilityLabel = "Decir hola"
        holaBoton.accessibilityHint = "Este botón sirve para decir hola"
        //holaBoton.accessibilityTraits = .image
        
        //Notificaciones
        //Dar permiso usuario
        let center = UNUserNotificationCenter.current()
        center.delegate = self //Esto es para poder ver las notis con la app abierta
        
        center.requestAuthorization(options: [.alert, .sound, .badge], completionHandler: {success, error in
                guard success else {
                    return
                }
            }
        )
        
        
        
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        //Le dice al sistema que muestre la notificacion como banner y con sonido
        //Esto para mostrar con la app abierta
        completionHandler([.banner, .sound])
    }

    @IBAction func accionboton(_ sender: Any) {
        let center = UNUserNotificationCenter.current()
        
        //Crear notificacion
        let content = UNMutableNotificationContent()
        content.title = "¡Holaaaaa!"
        content.subtitle = "Mi primer notificacion"
        content.body = "vengo a contarte un cuentom aegageaegageagaegaegaegagae"
        content.sound = UNNotificationSound.default
        
        //Trigger
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 2, repeats: false)
        
        //Registrar notificacion en centro de notificaciones
        let uuidString = UUID().uuidString
        let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
        
        center.add(request) { (error) in
            if let error = error{
                    print("Error con notificacion")
            }
        }
        
        print("Notificacion programada en 5 seg")
    }
    
}

