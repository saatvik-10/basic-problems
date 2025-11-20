//
//  FavouriteViewController.swift
//  RestaurantProjectAmitSir
//
//  Created by SDC-USER on 20/11/25.
//

import UIKit

class FavouriteViewController: UIViewController {
    
    var favRestaurants: [Restaurant] = []
    
//    var dataStore: DataStore = DataStore()
    var dataStore = DataStore.shared
    @IBOutlet weak var favCollectionViewOutlet: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.favRestaurants = dataStore.getFavRestaurants()
        
        let layout = generateLayout()
        // set the layout to collection view
        favCollectionViewOutlet.setCollectionViewLayout(layout, animated: true)

        // Do any additional setup after loading the view.
        favCollectionViewOutlet.dataSource = self
        
        
    }
    
    
    
    
    func generateLayout() -> UICollectionViewLayout {
        let size = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5),
                                          heightDimension: .fractionalHeight(1.0)
        )
        
        let item = NSCollectionLayoutItem(layoutSize: size)
        
        // create
        let groupSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1.0),
            heightDimension: .absolute(200)
        )
        
        // create the group
        let group = NSCollectionLayoutGroup.horizontal(
            layoutSize: groupSize,
            subitems: [item]
        )
        
        group.interItemSpacing = .fixed(30)
        
        let section = NSCollectionLayoutSection(group: group)
        section.interGroupSpacing = 15
        section.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)
        let layout = UICollectionViewCompositionalLayout(section: section)
        
        return layout
        
    }
    
    
}


extension FavouriteViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        favRestaurants.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "fav_cell", for: [indexPath.row]) as! FavouriteCollectionViewCell
        let restaurant = favRestaurants[indexPath.row]
        cell.favRestImage.image = UIImage(named: restaurant.images.first!)
        cell.favCellLabel.text = restaurant.name
        return cell
    }
    
    
}
