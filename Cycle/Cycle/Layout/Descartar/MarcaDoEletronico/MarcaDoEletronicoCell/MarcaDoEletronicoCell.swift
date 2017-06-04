//
//  MarcaDoEletronicoCell.swift
//  Cycle
//
//  Created by Lucas Barcelos on 03/06/17.
//  Copyright © 2017 LucasBarcelos. All rights reserved.
//

import UIKit

class MarcaDoEletronicoCell: UITableViewCell {

    //MARK: - Outlet
    @IBOutlet weak var lblMarca: UILabel!
    
    
    //MARK: - View Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
