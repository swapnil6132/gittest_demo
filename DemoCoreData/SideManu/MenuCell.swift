//
//  MenuCell.swift
//  ireportit
//
//  Created by Redspark on 24/08/18.
//  Copyright © 2018 Redspark. All rights reserved.
//

import UIKit

class MenuCell: UITableViewCell {

    @IBOutlet weak var viewBG: UIView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet var imgMenu: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
