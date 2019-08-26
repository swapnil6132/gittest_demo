//
//  SideMenuHeaderCell.swift
//  DemoCoreData
//
//  Created by Dhruv Patel on 25/07/19.
//  Copyright © 2019 Dhruv Patel. All rights reserved.
//

import UIKit

class SideMenuHeaderCell: UITableViewCell {

    @IBOutlet var lblHeaderTitle: FlashingLabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        lblHeaderTitle.baseColor = UIColor.orange
        lblHeaderTitle.flashingColors = [UIColor.orange.withAlphaComponent(0.5)]
        lblHeaderTitle.flashingTime = 0.3
        lblHeaderTitle.text = "HELLO"
        lblHeaderTitle.startFlashing()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
