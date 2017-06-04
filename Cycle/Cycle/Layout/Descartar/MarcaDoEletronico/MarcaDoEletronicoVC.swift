//
//  MarcaDoEletronicoVC.swift
//  Cycle
//
//  Created by Lucas Barcelos on 03/06/17.
//  Copyright © 2017 LucasBarcelos. All rights reserved.
//

import UIKit

class MarcaDoEletronicoVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    //MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    
    //MARK: - Propriedades
    var marcas:Array<String> = []
    
    let marca1 = "Alcatel"
    let marca2 = "Asus"
    let marca3 = "BlackBerry"
    let marca4 = "Blu"
    let marca5 = "Caterpillar"
    let marca6 = "Gradiente"
    let marca7 = "HTC"
    let marca8 = "Huawei"
    let marca9 = "Iphone"
    let marca10 = "Lenovo"
    let marca11 = "LG"
    let marca12 = "Microsoft"
    let marca13 = "Motorola"
    let marca14 = "Multilaser"
    let marca15 = "Nokia"
    let marca16 = "OnePlus"
    let marca17 = "Qbex"
    let marca18 = "Quantum"
    let marca19 = "Samsung"
    let marca20 = "Sony"
    let marca21 = "Xiaomi"
    let marca22 = "Outras Marcas"
    
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        marcas.append(marca1)
        marcas.append(marca2)
        marcas.append(marca3)
        marcas.append(marca4)
        marcas.append(marca5)
        marcas.append(marca6)
        marcas.append(marca7)
        marcas.append(marca8)
        marcas.append(marca9)
        marcas.append(marca10)
        marcas.append(marca11)
        marcas.append(marca12)
        marcas.append(marca13)
        marcas.append(marca14)
        marcas.append(marca15)
        marcas.append(marca16)
        marcas.append(marca17)
        marcas.append(marca18)
        marcas.append(marca19)
        marcas.append(marca20)
        marcas.append(marca21)
        marcas.append(marca22)
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        // Para o scroll começar na posição do TableView
        self.automaticallyAdjustsScrollViewInsets = false
        
        // Registrando a cell como UITableViewCell da Tabela
        let xib = UINib(nibName: "MarcaDoEletronicoCell", bundle: nil)
        self.tableView.register(xib, forCellReuseIdentifier: "cell")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    //MARK: - Métodos
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    //Implementação da TableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.marcas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Criando célula para a tabela
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "cell") as! MarcaDoEletronicoCell
        
        let item = marcas[indexPath.row]
        cell.lblMarca.text = item
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let linha = indexPath.row
        let vc = EstadoFisicoEletronicoVC(nibName: "EstadoFisicoEletronicoVC", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    //MARK: - Actions
    @IBAction func btnVoltar(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }

}
