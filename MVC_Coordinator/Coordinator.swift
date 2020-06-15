//
//  Coordinator.swift
//  MVC_Coordinator
//
//  Created by Carlos on 15/06/2020.
//  Copyright © 2020 TestCompany. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator {
    var navigationController : UINavigationController { get set }
    func start()
}
