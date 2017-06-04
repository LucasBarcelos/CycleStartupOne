//
//  EstadoFisicoEletronicoCell.swift
//  Cycle
//
//  Created by Lucas Barcelos on 04/06/17.
//  Copyright © 2017 LucasBarcelos. All rights reserved.
//

import UIKit

class EstadoFisicoEletronicoCell: UITableViewCell {

    
    //MARK: - Outlet
    @IBOutlet weak var imgSelecionado: UIImageView!
    @IBOutlet weak var lblEstadoFisico: UILabel!
    
    //MARK: - View Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
