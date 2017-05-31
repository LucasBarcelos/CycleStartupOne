//
//  TituloAnuncioVC.swift
//  Cycle
//
//  Created by Lucas Barcelos on 30/05/17.
//  Copyright © 2017 LucasBarcelos. All rights reserved.
//

import UIKit

class TituloAnuncioVC: UIViewController {

    //MARK: - Outlets
    @IBOutlet weak var txtTitulo: UITextField!
    
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myBorderColor : UIColor = UIColor(red: 79/255, green: 168/255, blue: 159/255, alpha: 1.0)

        txtTitulo.layer.borderColor = myBorderColor.cgColor
        txtTitulo.layer.borderWidth = 1
        
        // Ação para esconder o teclado
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(TituloAnuncioVC.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }

    
    //MARK: - Métodos
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    // Função para esconder o teclado
    func dismissKeyboard() {
        view.endEditing(true)
    }
    
    
    //MARK: - Actions
    @IBAction func btnVoltar(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }

    @IBAction func btnContinuar(_ sender: UIButton) {
        let vc = DescricaoAnuncioVC(nibName: "DescricaoAnuncioVC", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
}
