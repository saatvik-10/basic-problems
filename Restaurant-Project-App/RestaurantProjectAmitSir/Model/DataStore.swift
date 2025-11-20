//
//  DataStore.swift
//  RestroDemoAmitSir
//
//  Created by Harsh & Farjad on 19/11/25.
//  create data store type
//struct Restaurant {
//var id: UUID
//var name: String
//var address: String
//var location: Location
//var rating: Double
//var review:[String]
//var images:[String]
//var cuisine:[CuisineType]
//}

import Foundation

class DataStore {
    private var restaurants: [Restaurant] = []
    
    func getRestaurants() -> [Restaurant] {
        return restaurants
    }
    
    static let shared = DataStore()
    
    private init(){
        loadRestaurantSampleData()
    }
    
    func getFileteredRestaurants(byCuisine cuisine: CuisineType) -> [Restaurant] {
        return restaurants.filter {
            $0.cuisine.contains(cuisine)
        }
    }
    
    func getFavRestaurants() -> [Restaurant] {
        return getRestaurants().filter { restaurant in
            return restaurant.isFavourite
        }
    }
    
    func loadRestaurantSampleData() {
        let restaurantSampleData: [Restaurant] = [
            Restaurant(id: UUID(),
                        name: "California Burrito",
                        address: "Bavdhan, Pune",
                       location: Location(latitude: 37.7749, longitude: 122.4194),
                        rating: 4,
                        review: ["Loved the burrito", "Will come back soon"],
                        images: ["bombay_bites_exterior"],
                        cuisine: [.american, .mexican],
                      isFavourite: true),
            Restaurant(id: UUID(),
                       name: "Sushi Place",
                       address: "Karve Nagar, Pune",
                       location: Location(latitude: 37.7849, longitude: 122.4094),
                       rating: 3.5,
                       review: ["Great sushi", "Very fresh"],
                       images: ["samosa"],
                       cuisine: [.japanese]),
            Restaurant(id: UUID(),
                       name: "Saatvik Misal",
                       address: "Karve Putla, Pune",
                       location: Location(latitude: 45.7849, longitude: 54.6544),
                       rating: 4.5,
                       review: ["Great sushi", "Very fresh"],
                       images: ["pav_bhaji"],
                       cuisine: [.indian]),
            Restaurant(id: UUID(),
                        name: "Tiramisu Paradise",
                        address: "Bavdhan, Pune",
                       location: Location(latitude: 37.7749, longitude: 122.4194),
                        rating: 4,
                        review: ["Loved the burrito", "Will come back soon"],
                        images: ["tiramisu"],
                        cuisine: [.american, .mexican]),
            Restaurant(id: UUID(),
                        name: "California Burrito1",
                        address: "Bavdhan, Pune",
                       location: Location(latitude: 37.7749, longitude: 122.4194),
                        rating: 4,
                        review: ["Loved the burrito", "Will come back soon"],
                        images: ["bombay_bites_exterior"],
                        cuisine: [.american, .mexican]),
            Restaurant(id: UUID(),
                        name: "California Burrito2",
                        address: "Bavdhan, Pune",
                       location: Location(latitude: 37.7749, longitude: 122.4194),
                        rating: 4,
                        review: ["Loved the burrito", "Will come back soon"],
                        images: ["bombay_bites_exterior"],
                        cuisine: [.mexican])
        ]
        self.restaurants = restaurantSampleData
    }
}
