//
//  OutrosModelosTablets.swift
//  Cycle
//
//  Created by Lucas Barcelos on 28/05/17.
//  Copyright © 2017 LucasBarcelos. All rights reserved.
//

import UIKit

class OutrosModelosTablets: UIViewController {
    
    //MARK: - Outlets
    //Tablets
    @IBOutlet weak var btnTabletWindows: UIButton!
    @IBOutlet weak var btnIpad: UIButton!
    @IBOutlet weak var btnTabletAndroid: UIButton!
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        Singleton.sharedInstance.hideTabBar()
        
        // Deixa os botões circulares
        let myBorderColor : UIColor = UIColor.white

        self.btnTabletWindows.layer.cornerRadius = self.btnTabletWindows.frame.size.width / 2;
        self.btnTabletWindows.clipsToBounds = true;
        self.btnTabletWindows.layer.borderWidth = 1.5
        self.btnTabletWindows.layer.borderColor = myBorderColor.cgColor
        
        self.btnIpad.layer.cornerRadius = self.btnIpad.frame.size.width / 2;
        self.btnIpad.clipsToBounds = true;
        self.btnIpad.layer.borderWidth = 1.5
        self.btnIpad.layer.borderColor = myBorderColor.cgColor
        
        self.btnTabletAndroid.layer.cornerRadius = self.btnTabletAndroid.frame.size.width / 2;
        self.btnTabletAndroid.clipsToBounds = true;
        self.btnTabletAndroid.layer.borderWidth = 1.5
        self.btnTabletAndroid.layer.borderColor = myBorderColor.cgColor
        
    }
    
    //MARK: - Métodos
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    //MARK: - Actions
    @IBAction func btnVoltar(_ sender: UIButton) {
        Singleton.sharedInstance.showTabBar()
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btnTabletWindows(_ sender: UIButton) {
        let vc = AdicionarFotosVC(nibName: "AdicionarFotosVC", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func btnIpad(_ sender: UIButton) {
        let vc = AdicionarFotosVC(nibName: "AdicionarFotosVC", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func btnTabletAndroid(_ sender: UIButton) {
        let vc = AdicionarFotosVC(nibName: "AdicionarFotosVC", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
