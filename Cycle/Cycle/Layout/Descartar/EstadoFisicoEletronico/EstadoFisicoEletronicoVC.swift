//
//  EstadoFisicoEletronicoVC.swift
//  Cycle
//
//  Created by Lucas Barcelos on 03/06/17.
//  Copyright © 2017 LucasBarcelos. All rights reserved.
//

import UIKit

class EstadoFisicoEletronicoVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    //MARK: - Outlet
    @IBOutlet weak var tableView: UITableView!
    
    
    //MARK: - Propriedade
    var estados:Array<String> = []
    
    let estado1 = "Display trincado/quebrado"
    let estado2 = "Não liga"
    let estado3 = "Outras partes quebradas"
    let estado4 = "Câmera(s) não funciona(m)"
    let estado5 = "GPS não funciona"
    let estado6 = "Wi-Fi não funciona"
    let estado7 = "Sinal operadora não funciona"
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        estados.append(estado1)
        estados.append(estado2)
        estados.append(estado3)
        estados.append(estado4)
        estados.append(estado5)
        estados.append(estado6)
        estados.append(estado7)
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        // Para o scroll começar na posição do TableView
        self.automaticallyAdjustsScrollViewInsets = false
        
        // Registrando a cell como UITableViewCell da Tabela
        let xib = UINib(nibName: "EstadoFisicoEletronicoCell", bundle: nil)
        self.tableView.register(xib, forCellReuseIdentifier: "cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //MARK: - Método
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    
    //Implementação da TableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.estados.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Criando célula para a tabela
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "cell") as! EstadoFisicoEletronicoCell
        
        let item = estados[indexPath.row]
        cell.lblEstadoFisico.text = item
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! EstadoFisicoEletronicoCell
        let item = estados[indexPath.row]

        if tableView.cellForRow(at: indexPath)?.accessoryType == UITableViewCellAccessoryType.checkmark {
           tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.none
        }else{
            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.checkmark
        }
    }

    
    //MARK: - Actions
    @IBAction func btnVoltar(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btnContinuar(_ sender: UIButton) {
        
    }

}
