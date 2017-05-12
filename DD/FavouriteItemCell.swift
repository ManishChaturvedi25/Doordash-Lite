//
//  FavouriteItemCell.swift
//  DD
//
//  Created by ctsuser1 on 5/12/17.
//  Copyright © 2017 ManishChaturvedi. All rights reserved.
//

import UIKit

class FavouriteItemCell: UITableViewCell {

    
    @IBOutlet weak var storeImageView: UIImageView!
    
    
    @IBOutlet weak var storeNameLabel: UILabel!
    
    @IBOutlet weak var deliveryTypeLabel: UILabel!
    
    @IBOutlet weak var specilityTypeLabel: UILabel!
    
    @IBOutlet weak var durationLabel: UILabel!
    
    static let reuseIdentified = "FavouriteItemCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
