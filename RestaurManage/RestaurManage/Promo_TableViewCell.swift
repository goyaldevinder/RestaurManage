//
//  Promo_TableViewCell.swift
//  RestaurManage
//
//  Created by Devinder Goyal on 2017-11-12.
//  Copyright © 2017 Devinder Goyal. All rights reserved.
//

import UIKit

class Promo_TableViewCell: UITableViewCell {

    @IBOutlet weak var txtpromo: UILabel!
    @IBOutlet weak var txtexpirydate: UILabel!
    @IBOutlet weak var txtuser_category: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
