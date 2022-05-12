//
//  SearchViewControllerTablViewExtension.swift
//  SocialAppTask
//
//  Created by Techseria on 12/05/22.
//

import Foundation
import UIKit

extension SearchViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searching {
            return searchedFruitList.count
        } else {
            return recentSearchArray.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if searching {
            let cell = tableView.dequeueReusableCell(withIdentifier: searchTableViewId, for: indexPath) as! SearchTableViewCell
            cell.prepareCell(searchitemName: searchedFruitList[indexPath.row])
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: recentSearchTableViewId, for: indexPath) as! RecentSearchTableViewCell

            cell.prepareCell(itemName: recentSearchArray[indexPath.row])
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        recentSearchArray.insert(searchedFruitList[indexPath.row] , at:0)
        removeRecentSearchifRequired()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if searching {
            return 60
        }
        return 47
    }
}
