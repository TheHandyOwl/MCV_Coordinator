//
//  Extension.swift
//  MVC_Coordinator
//
//  Created by Carlos on 15/06/2020.
//  Copyright © 2020 TestCompany. All rights reserved.
//

import UIKit

extension ViewController {
    func showAlert(withTitle: String, withMessage: String) {
        let alertController = UIAlertController(title: withTitle, message: withMessage, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
}
