//
//  CustomTableViewCell.swift
//  BMCustomTableView
//
//  Created by Barbara Brina on 10/22/15.
//  Copyright © 2015 CocoaPods. All rights reserved.
//

import UIKit
import SpriteKit

class CustomTableViewCell: UITableViewCell {


    @IBOutlet var skview: SKView!
    @IBOutlet weak var categoryLabel: UITextField!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        categoryLabel.text = "test"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
