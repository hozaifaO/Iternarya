//
//  TripsViewController.swift
//  Iternarya
//
//  Created by Hozaifa Owaisi on 1/4/20.
//  Copyright © 2020 Hozaifa. All rights reserved.
//

import UIKit

class TripsViewController: UIViewController, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        tableView.dataSource = self
        super.viewDidLoad()
        TripFunctions.readTrip { [weak self] in
            self?.tableView.reloadData()
            
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.tripModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        if cell == nil{
            cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        }
        cell!.textLabel?.text = Data.tripModel[indexPath.row].title
        return cell!
    }
}
