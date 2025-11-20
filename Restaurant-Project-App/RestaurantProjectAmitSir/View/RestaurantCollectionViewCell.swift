//
//  RestaurantCollectionViewCell.swift
//  RestroDemoAmitSir
//
//  Created by SDC-USER on 19/11/25.
//

import UIKit

class RestaurantCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var restaurantNameLabel: UILabel!
    
    func configureCell(restaurant: Restaurant){
        imageView.image = UIImage(named: restaurant.images.first ?? "")
        
        imageView.layer.cornerRadius = 17.0
        imageView.clipsToBounds = true
        
        restaurantNameLabel.text = restaurant.name
    }
    
}
