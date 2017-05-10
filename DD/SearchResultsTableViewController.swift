//
//  SearchResultsViewControllerController.swift
//  DD
//
//  Created by ctsuser1 on 5/9/17.
//  Copyright © 2017 ManishChaturvedi. All rights reserved.
//

import UIKit

class SearchResultsTableViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    let searchController = UISearchController(searchResultsController: nil)

    let dataSource = SearchResultsDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
         self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(SearchResultsTableViewController.dismissSearchResultController))
        
        tableView.tableHeaderView = searchController.searchBar
        
        searchController.searchResultsUpdater = self as? UISearchResultsUpdating
        
        tableView.dataSource = dataSource
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func dismissSearchResultController(){
        self.dismiss(animated: true, completion: nil)
    }


    @IBAction func DismissSearchView(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)

    }
}

extension SearchResultsTableViewController : UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        

        tableView.reloadData()
        print(searchController.searchBar.text!)
    }
}

