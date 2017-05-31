//
//  AdicionarFotosVC.swift
//  Cycle
//
//  Created by Lucas Barcelos on 29/05/17.
//  Copyright © 2017 LucasBarcelos. All rights reserved.
//

import UIKit

class AdicionarFotosVC: UIViewController {

    
    //MARK: - Outlets
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //MARK: - Métodos
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    //MARK: - Actions
    @IBAction func btnVoltar(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btnTirarFoto(_ sender: UIButton) {
        
        let vc = TirarEscolherFotosVC(nibName: "TirarEscolherFotosVC", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)

    }
    
    @IBAction func btnMaisTarde(_ sender: UIButton) {
        let vc = TituloAnuncioVC(nibName: "TituloAnuncioVC", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
    


}
