//
//  Menu.swift
//  DD
//
//  Created by ctsuser1 on 5/13/17.
//  Copyright © 2017 ManishChaturvedi. All rights reserved.
//

import Foundation

class MenuItem {
    let description:String
    let name: String
    
    init(description:String, name:String){
        self.description = description
        self.name = name
    }
    
}

class MenuCategories {
    let title: String
    let menuiItems: [MenuItem]
    
    init(title:String, menuItems:[MenuItem]){
        self.title = title
        self.menuiItems = menuItems
    }
}

class Menu {
    
    let id: String
    let name : String
    let menuCategories : [MenuCategories]
    
    init(id:String, name:String, menuCategories:[MenuCategories]){
        
        self.id = id
        self.name = name
        self.menuCategories = menuCategories
    }
}

/*
 
 - important fields:
 - id: primary key
 - name: the name of the menu
 - menu_categories: a list of categories within the menu. For example, an italian menu might have the following categories: Pizzas, Pastas, Seafood, etc.

 */
