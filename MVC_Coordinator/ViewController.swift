//
//  ViewController.swift
//  MVC_Coordinator
//
//  Created by Carlos on 15/06/2020.
//  Copyright © 2020 TestCompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboarded {

    @IBOutlet weak var tableView: UITableView!
    
    var coordinator : MainCoordinator?
    var dataSource = ObjectDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = dataSource
        showAlert(withTitle: "Mi título", withMessage: "Bienvenido, ...")
    }
    
}

extension ViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let model = dataSource.dataArray[indexPath.row]["Nombre"]!
        coordinator?.goToDetailView(with: model)
    }
}

