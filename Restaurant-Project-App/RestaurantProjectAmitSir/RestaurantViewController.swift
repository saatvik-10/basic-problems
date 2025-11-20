//
//  ViewController.swift
//  RestaurantProjectAmitSir
//
//  Created by SDC-USER on 19/11/25.
//

import UIKit

class RestaurantViewController: UIViewController, UICollectionViewDataSource {
    
    
    var cuisineType: CuisineType?
    
    var restaurants: [Restaurant] = []
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return the number of restaurants
        self.restaurants.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // create the cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RestaurantCell", for: indexPath)
        guard let restaurantCell = cell as? RestaurantCollectionViewCell else { // as? RestaurantCollectionViewCell)
            return cell
        }
        
        let restaurant = self.restaurants[indexPath.row]
        restaurantCell.configureCell(restaurant: restaurant)
        
        return cell
    }
    
    
    var dataStore = DataStore.shared
    
    
    @IBOutlet weak var restaurantCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let cuisineType = self.cuisineType else {return}
        self.restaurants = dataStore.getFileteredRestaurants(byCuisine: cuisineType)

        
        
        
        let layout = generateLayout()
        // set the layout to collection view
        restaurantCollectionView.setCollectionViewLayout(layout, animated: true)
        
        // Do any additional setup after loading the view.
        //        dataStore.getRestaurants()
        
        //        if let flowLayout = restaurantCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
        //            flowLayout.estimatedItemSize = .zero
        //
        //            flowLayout.itemSize = CGSize(width: 100, height: 100)
        //        }
        //
        //        restaurantCollectionView.contentInset = UIEdgeInsets(top: 20, left: 0, bottom: 20, right: 0)
        //
        //    }
        
        restaurantCollectionView.dataSource = self
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
    
    
    @IBAction func addToFavClicked(_ sender: UIButton) {
        restaurants[sender.tag].isFavourite.toggle()
    }
}

