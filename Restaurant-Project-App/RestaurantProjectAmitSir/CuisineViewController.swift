//
//  CuisineViewController.swift
//  RestaurantProjectAmitSir
//
//  Created by SDC-USER on 20/11/25.
//

import UIKit

class CuisineViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{
    var cuisines: [CuisineType] = CuisineType.allCases
    

    @IBOutlet weak var cuisineCollectionView: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //        return the number of cuisines
        cuisines.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // create the cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cuisineCell", for: indexPath)
        guard let cuisineCell = cell as? CuisineCollectionViewCell else {
            return cell
        }
        
        let cuisine = cuisines[indexPath.row]
        
//        cuisineCell.configureCell(cuisine: cuisine)
        
        cuisineCell.cuisineLabel.text = cuisine.rawValue
        cuisineCell.cuisineImage.image = UIImage(named: cuisine.imageName)
        
        return cell
    }
    
    
    var dataStore = DataStore.shared
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        
        let layout = generateLayout()
        cuisineCollectionView.dataSource = self
        cuisineCollectionView.delegate = self
        cuisineCollectionView.setCollectionViewLayout(layout, animated: true)
        

    }
    
    func generateLayout() -> UICollectionViewLayout {
        let size = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(0.5),
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
        
        group.interItemSpacing = .fixed(50)
        
        let section = NSCollectionLayoutSection(group: group)
        section.interGroupSpacing = 15
        section.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)
        let layout = UICollectionViewCompositionalLayout(section: section)
        
        return layout
        
    }

    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        
//        let selectedCuisine = cuisines[indexPath.row]
//        performSegue(withIdentifier: "filteredRestaurants", sender: selectedCuisine)
//    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Get the first selected index path
        guard let selectedIndexPath = cuisineCollectionView.indexPathsForSelectedItems?.first else { return }
        
        let cuisine = cuisines[selectedIndexPath.item]
        print(cuisine)
        
        guard let restaurantVC = segue.destination as? RestaurantViewController else { return }
        restaurantVC.cuisineType = cuisine
    }
    
    
        
}
