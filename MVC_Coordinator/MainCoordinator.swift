//
//  MainCoordinator.swift
//  MVC_Coordinator
//
//  Created by Carlos on 15/06/2020.
//  Copyright © 2020 TestCompany. All rights reserved.
//

import Foundation
import UIKit

class MainCoordinator : Coordinator {
    
    // Inicializa el navigation
    var navigationController: UINavigationController
    
    init(navigationController : UINavigationController) {
        self.navigationController = navigationController
    }
    // Una instancia del ViewController que lo llama
    // Nuestra pantalla principal
    func start() {
        let vc = ViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func goToDetailView(with data: String) {
        let vc = ViewControllerDos.instantiate()
        vc.coordinator = self
        vc.textoRecibido = data
        navigationController.pushViewController(vc, animated: true)
    }
    
}
