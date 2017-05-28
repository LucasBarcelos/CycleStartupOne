//
//  HomeDescartarVC.swift
//  Cycle
//
//  Created by Lucas Barcelos on 28/05/17.
//  Copyright © 2017 LucasBarcelos. All rights reserved.
//

import UIKit

class HomeDescartarVC: UIViewController {

    //MARK: - Outlets
    //Celulares - Smartphones
    @IBOutlet weak var btnCelular: UIButton!
    
    //Tablets
    @IBOutlet weak var btnTablet: UIButton!
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController!.setNavigationBarHidden(true, animated: true)
        
        // Deixa os botões circulares
        let myBorderColor : UIColor = UIColor.white
        
        self.btnCelular.layer.cornerRadius = self.btnCelular.frame.size.width / 2;
        self.btnCelular.clipsToBounds = true;
        self.btnCelular.layer.borderWidth = 1.5
        self.btnCelular.layer.borderColor = myBorderColor.cgColor
        
        self.btnTablet.layer.cornerRadius = self.btnTablet.frame.size.width / 2;
        self.btnTablet.clipsToBounds = true;
        self.btnTablet.layer.borderWidth = 1.5
        self.btnTablet.layer.borderColor = myBorderColor.cgColor

    }
    
    override func viewWillAppear(_ animated: Bool) {
        Singleton.sharedInstance.showTabBar()
    }
    
    //MARK: - Métodos
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    //MARK: - Actions

    @IBAction func btnCelular(_ sender: UIButton) {
        let vc: OutrosModelosCelularesVC = OutrosModelosCelularesVC()
        vc.modalPresentationStyle = .overCurrentContext
        vc.modalTransitionStyle = .crossDissolve
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func btnTablet(_ sender: UIButton) {
        let vc: OutrosModelosTablets = OutrosModelosTablets()
        vc.modalPresentationStyle = .overCurrentContext
        vc.modalTransitionStyle = .crossDissolve
        self.present(vc, animated: true, completion: nil)
    }
    
    
}
