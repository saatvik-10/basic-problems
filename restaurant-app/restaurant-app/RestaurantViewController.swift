//
//  ViewController.swift
//  Restaurant-App
//
//  Created by SDC-USER on 19/11/25.
//

import UIKit

class RestaurantViewController: UIViewController, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //return the count of restaurants
        dataStore.getRestaurants().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "restaurant_cell", for: indexPath)
        guard let restaurantCell = cell as? RestaurantCollectionViewCell else {
            return cell
        }
        
        let restaurant = dataStore.getRestaurants()[indexPath.row]
        restaurantCell.configureCell(restaurant: restaurant)
        return cell
    }
    
    var dataStore: DataStore = DataStore()
    
    @IBOutlet weak var restaurantCollectionView: UICollectionView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        _ = dataStore.getRestaurants()
        
        //downcast the uicollectionviewlayout to uicollectionviewflowlayout
        if let flowLayout = restaurantCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            
            //incase if u want to use item size property, u hv to disable self sizing
            flowLayout.estimatedItemSize = .zero
            
            //set the item size for the flow layout
            flowLayout.itemSize = CGSize(width: view.frame.width, height: 250)
        }
        
        restaurantCollectionView.contentInset = UIEdgeInsets(top: 0, left: 25, bottom: 0, right: 25)
//        restaurantCollectionView.invalidateIntrinsicContentSize()
        
        //tell the collection view who the data Source is
        restaurantCollectionView.dataSource = self
        
        // Do any additional setup after loading the view.
    }


}

