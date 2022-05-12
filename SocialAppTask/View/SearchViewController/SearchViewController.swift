//
//  SearchViewController.swift
//  SocialAppTask
//
//  Created by Techseria on 12/05/22.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var itemSearchBar: UISearchBar!
    @IBOutlet weak var itemTableView: UITableView!
    
    let searchTableViewId = "searchTableViewCellID"
    let recentSearchTableViewId = "recentSearchTableViewCellID"
    var fruitList = ["Apple", "Banana" , "Grapes" , "Watermelon" , "Orange", "Strawberry" , "Mango"]
    var searchedFruitList = [String]()
    var recentSearchArray = [String]()
    var searching = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBarConfigration()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
    }

    func searchBarConfigration() {
        self.itemSearchBar.showsCancelButton = true
        self.itemSearchBar.searchTextField.clearButtonMode = .never
        self.itemSearchBar.searchTextField.layer.borderWidth = 1
        self.itemSearchBar.searchTextField.layer.borderColor = UIColor.orange.cgColor
        self.itemSearchBar.searchTextField.layer.cornerRadius = 5
    }
    
    func removeRecentSearchifRequired() {
        if recentSearchArray.count > 10 {
            recentSearchArray.removeLast()
        }
    }
}
