//
//  CustomNavigationController.swift
//  Cycle
//
//  Created by Lucas Barcelos on 28/05/17.
//  Copyright © 2017 LucasBarcelos. All rights reserved.
//

import Foundation
import UIKit

class CustomNavigationController: UINavigationController {
    
    override var supportedInterfaceOrientations : UIInterfaceOrientationMask  {
        // Delega para o view controller atual (é o último do array)
        return self.topViewController!.supportedInterfaceOrientations
    }
    
}
