//
//  ViewControllerDos.swift
//  MVC_Coordinator
//
//  Created by Carlos on 15/06/2020.
//  Copyright © 2020 TestCompany. All rights reserved.
//

import UIKit

class ViewControllerDos: UIViewController, Storyboarded {

    @IBOutlet weak var nameLabel: UILabel!
    
    var coordinator : MainCoordinator?
    
    var textoRecibido = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = textoRecibido
    }

}
