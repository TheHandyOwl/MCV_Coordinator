//
//  ObjectDataSource.swift
//  MVC_Coordinator
//
//  Created by Carlos on 15/06/2020.
//  Copyright © 2020 TestCompany. All rights reserved.
//

import UIKit

class ObjectDataSource: NSObject, UITableViewDataSource {

    var tableView : UITableView?
    
    var dataArray = [
        ["Nombre": "Luis", "Edad": "45", "Profesion": "Arquitecto"],
        ["Nombre": "Elena", "Edad": "38", "Profesion": "Abogada"],
        ["Nombre": "Laura", "Edad": "40", "Profesion": "Escritora"],
        ["Nombre": "Alfredo", "Edad": "44", "Profesion": "Notario"]
    ]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = dataArray[indexPath.row]
        let cellID = "cellID"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        cell?.textLabel?.text = "\(model["Nombre"]!)"
        cell?.detailTextLabel?.text = "\(model["Profesion"]!)"
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            dataArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Do something
        }
    }
    
}
