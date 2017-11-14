//
//  tablecell_ordersTableViewCell.swift
//  RestaurManage
//
//  Created by Devinder Goyal on 2017-11-12.
//  Copyright © 2017 Devinder Goyal. All rights reserved.
//
import UIKit

class tablecell_ordersTableViewCell: UITableViewCell {
    @IBOutlet weak var txttotalorders: UILabel!
    @IBOutlet weak var txtxprofit: UILabel!
    @IBOutlet weak var txtlocation: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
