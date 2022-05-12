import Foundation
import UIKit

extension SearchViewController : UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchedFruitList = fruitList.filter { $0.lowercased().prefix(searchText.count) == searchText.lowercased() }
        searching = true
        if searchText == "" {
            searching = false
        }
        itemTableView.reloadData()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searching = false
        searchBar.text = ""
        itemTableView.reloadData()
        self.view.endEditing(true)
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        recentSearchArray.insert(searchBar.text ?? "", at:0)
        removeRecentSearchifRequired()
        self.view.endEditing(true)
    }
    
}

