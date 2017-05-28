//
//  Singleton.swift
//  Cycle
//
//  Created by Lucas Barcelos on 28/05/17.
//  Copyright © 2017 LucasBarcelos. All rights reserved.
//

import Foundation
import UIKit
class Singleton{
    static let sharedInstance = Singleton()
    var tabBar: CustomTabBarController?
    
    
    func hideTabBar() {
        if let tab = tabBar {
            tab.tabBar.isHidden = true
        }
        
    }
    
    func showTabBar() {
        if let tab = tabBar {
            tab.tabBar.isHidden = false
        }
    }
    
    func progressBarDisplayer(_ mainView: UIView, msg:String, _ indicator:Bool ) -> UIView {
        var activityIndicator = UIActivityIndicatorView()
        var strLabel = UILabel()
        var messageFrame = UIView()
        strLabel = UILabel(frame: CGRect(x: mainView.frame.midX - 40, y: mainView.frame.midY - 25, width: 200, height: 50))
        strLabel.text = msg
        strLabel.textColor = UIColor.white
        let screenWidth = UIScreen.main.bounds.size.width
        let screenHeight = UIScreen.main.bounds.size.height
        messageFrame = UIView(frame: CGRect(x: 0, y: 0 , width: screenWidth, height: screenHeight))
        messageFrame.layer.cornerRadius = 0
        messageFrame.backgroundColor = UIColor(white: 0, alpha: 0.7)
        if indicator {
            activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.white)
            activityIndicator.frame = CGRect(x: mainView.frame.midX - 90, y: mainView.frame.midY - 25, width: 50, height: 50)
            activityIndicator.startAnimating()
            messageFrame.addSubview(activityIndicator)
        }
        messageFrame.addSubview(strLabel)
        mainView.addSubview(messageFrame)
        return messageFrame
    }
}
