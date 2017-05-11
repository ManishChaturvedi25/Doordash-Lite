//
//  SearchResultsDataSource.swift
//  DD
//
//  Created by ctsuser1 on 5/10/17.
//  Copyright © 2017 ManishChaturvedi. All rights reserved.
//

import UIKit

class SearchResultsDataSource: NSObject , UITableViewDataSource{

    override init() {
        super.init()
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let nearestAttractionCell = tableView.dequeueReusableCell(withIdentifier:NearestAttractionCell.reuseIdentified, for: indexPath) as! NearestAttractionCell
        
//        nearestAttractionCell.attractionNameLabel.text = "Indian Chat House"
        nearestAttractionCell.storeNameLabel.text = "Curry Up Now"


        return nearestAttractionCell
        
    }

    
}
