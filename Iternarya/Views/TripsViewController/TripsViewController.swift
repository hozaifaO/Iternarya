//
//  TripsViewController.swift
//  Iternarya
//
//  Created by Hozaifa Owaisi on 1/4/20.
//  Copyright © 2020 Hozaifa. All rights reserved.
//

import UIKit

class TripsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        tableView.dataSource = self
        tableView.delegate = self
        super.viewDidLoad()
        TripFunctions.readTrip { [weak self] in
            self?.tableView.reloadData()
            
        }
        
        view.backgroundColor = Theme.BackgroundColor
    }
}
 // Extension for functions that relate to Tabel View
extension TripsViewController:  UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.tripModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TripsTableViewCell
        cell.setup(model:  Data.tripModel[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView,heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
}
