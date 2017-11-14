//
//  CustomerTableViewCell.swift
//  RestaurManage
//
//  Created by Devinder Goyal on 2017-11-12.
//  Copyright © 2017 Devinder Goyal. All rights reserved.
//

import UIKit

class CustomerTableViewCell: UITableViewCell {

    @IBOutlet weak var txtorders: UILabel!
    @IBOutlet weak var cust_category: UILabel!
    @IBOutlet weak var txtcustname: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
