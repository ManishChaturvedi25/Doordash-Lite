//
//  FavouritesDataSource.swift
//  DD
//
//  Created by ctsuser1 on 5/12/17.
//  Copyright © 2017 ManishChaturvedi. All rights reserved.
//

import UIKit

class FavouritesDataSource: NSObject, UITableViewDataSource {

    private var menuItems = [Menu] ()

    override init() {
        super.init()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let favouriteItemCell = tableView.dequeueReusableCell(withIdentifier:FavouriteItemCell.reuseIdentified, for: indexPath) as! FavouriteItemCell
        
        favouriteItemCell.storeNameLabel.text = "Curry Up Now"
        favouriteItemCell.specilityTypeLabel.text = "Thai"
        favouriteItemCell.deliveryTypeLabel.text = "Free!"
        
        return favouriteItemCell
        
    }

    
}
