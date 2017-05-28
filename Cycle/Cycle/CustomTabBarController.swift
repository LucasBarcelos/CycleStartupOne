//
//  CustomTabBarController.swift
//  Cycle
//
//  Created by Lucas Barcelos on 28/05/17.
//  Copyright © 2017 LucasBarcelos. All rights reserved.
//

import Foundation
import UIKit
class CustomTabBarController: UITabBarController, UITabBarControllerDelegate {
    
    override var supportedInterfaceOrientations : UIInterfaceOrientationMask  {
        // Delega para o view controller selecionado na Tab
        return self.selectedViewController!.supportedInterfaceOrientations
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        print("select")
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("selectControler")
    }
}

