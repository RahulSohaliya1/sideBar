//
//  SideBarTableViewController.swift
//  sideBar
//
//  Created by Rahul on 13/04/23.
//

import UIKit

struct Option {
    var name: String
    var image: String
}

class SideBarTableViewController: UITableViewController {
    
    // MARK: - Navigation
    
    var arrOptions: [Option] = []
    var selectedIndex: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        loadOptions()
       
    }
    
    private func loadOptions() {
        let homeOption: Option = Option(name: "Home", image: "fireplace")
        let contactUs: Option = Option(name: "contact Us", image: "fireplace")
        let AboutUs: Option = Option(name: "About Us", image: "fireplace")
        arrOptions = [homeOption, contactUs, AboutUs]
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrOptions.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell()
        cell.textLabel?.text = arrOptions[indexPath.row].name
        cell.imageView?.image = UIImage(named: arrOptions[indexPath.row].image)
        cell.selectionStyle = .none
        if selectedIndex == indexPath.row {
            cell.textLabel?.textColor = .red
        } else {
            cell.textLabel?.textColor = .black
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndex = indexPath.row
        tableView.reloadData()
        switch indexPath.row {
        case 0: performSegue(withIdentifier: "Home", sender: nil)
        case 1: performSegue(withIdentifier: "Contact Us", sender: nil)
        case 2: performSegue(withIdentifier: "About Us", sender: nil)
        default: performSegue(withIdentifier: "Home", sender: nil)

        }
    }
}
    


    
