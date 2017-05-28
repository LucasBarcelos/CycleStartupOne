//
//  HomeColetarVC.swift
//  Cycle
//
//  Created by Lucas Barcelos on 28/05/17.
//  Copyright © 2017 LucasBarcelos. All rights reserved.
//

import UIKit

class HomeColetarVC: UIViewController {

    //MARK: - Outlets
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController!.setNavigationBarHidden(true, animated: true)
    }

    //MARK: - Métodos
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    //MARK: - Actions

}
