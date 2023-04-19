//
//  AboutUsViewController.swift
//  sideBar
//
//  Created by Rahul on 13/04/23.
//

import UIKit

class AboutUsViewController: UIViewController {
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var menuBarButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if self.revealViewController() != nil {
            menuBarButton.target = self.revealViewController()
            menuBarButton.action = #selector(SWRevealViewController.revealToggle(_:))
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }

    }
    

}
