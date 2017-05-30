//
//  OutrosModelosCelularesVC.swift
//  Cycle
//
//  Created by Lucas Barcelos on 28/05/17.
//  Copyright © 2017 LucasBarcelos. All rights reserved.
//

import UIKit

class OutrosModelosCelularesVC: UIViewController {

    //MARK: - Outlets
    //Celulares - Smartphones
    @IBOutlet weak var btnCelular: UIButton!
    @IBOutlet weak var btnIphone: UIButton!
    @IBOutlet weak var btnAndroid: UIButton!
    @IBOutlet weak var btnWindowsPhone: UIButton!
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        Singleton.sharedInstance.hideTabBar()
        
        // Deixa os botões circulares
        let myBorderColor : UIColor = UIColor.white
        
        self.btnCelular.layer.cornerRadius = self.btnCelular.frame.size.width / 2;
        self.btnCelular.clipsToBounds = true;
        self.btnCelular.layer.borderWidth = 1.5
        self.btnCelular.layer.borderColor = myBorderColor.cgColor
        
        self.btnWindowsPhone.layer.cornerRadius = self.btnWindowsPhone.frame.size.width / 2;
        self.btnWindowsPhone.clipsToBounds = true;
        self.btnWindowsPhone.layer.borderWidth = 1.5
        self.btnWindowsPhone.layer.borderColor = myBorderColor.cgColor
        
        self.btnIphone.layer.cornerRadius = self.btnIphone.frame.size.width / 2;
        self.btnIphone.clipsToBounds = true;
        self.btnIphone.layer.borderWidth = 1.5
        self.btnIphone.layer.borderColor = myBorderColor.cgColor
        
        self.btnAndroid.layer.cornerRadius = self.btnAndroid.frame.size.width / 2;
        self.btnAndroid.clipsToBounds = true;
        self.btnAndroid.layer.borderWidth = 1.5
        self.btnAndroid.layer.borderColor = myBorderColor.cgColor
        
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
    
    @IBAction func btnCelular(_ sender: UIButton) {
        let vc = AdicionarFotosVC(nibName: "AdicionarFotosVC", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func btnIphone(_ sender: UIButton) {
        let vc = AdicionarFotosVC(nibName: "AdicionarFotosVC", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func btnAndroid(_ sender: UIButton) {
        let vc = AdicionarFotosVC(nibName: "AdicionarFotosVC", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func btnWindowsPhone(_ sender: UIButton) {
        let vc = AdicionarFotosVC(nibName: "AdicionarFotosVC", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
    }

}
