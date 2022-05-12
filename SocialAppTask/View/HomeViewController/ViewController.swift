//
//  ViewController.swift
//  SocialAppTask
//
//  Created by Techseria on 11/05/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var simpanButton: UIButton!
    
    let optionCellIdentifier = "optionsCellIdentifier"
    let mainStoryboard = "Main"
    let searchStoryboard  = "searchViewControllerID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        simpanButton.layer.cornerRadius = 20
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }
    
    @IBAction func simpanButtonTapped(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: mainStoryboard, bundle:nil)
        let searchViewController = storyBoard.instantiateViewController(withIdentifier: searchStoryboard) as! SearchViewController
        self.navigationController?.pushViewController(searchViewController, animated: true)
    }
}

extension ViewController : UICollectionViewDataSource , UICollectionViewDelegate , UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: optionCellIdentifier, for: indexPath) as! OptionCollectionViewCell
        cell.prepareCellView(row: indexPath.row)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width/3.0, height: collectionView.bounds.width/3.0)
    }
    
}

