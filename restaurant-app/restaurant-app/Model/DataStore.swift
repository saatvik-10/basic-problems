import Foundation

//
//  DataStore.swift
//  Restaurant-App
//
//  Created by SDC-USER on 19/11/25.
//

//create the dsta store type
class DataStore {
    private var restaurants:[Restaurant] = []
    func getRestaurants()->[Restaurant] {
        return restaurants
    }
    
    init() {
        loadSampleData()
    }
    
    func loadSampleData() {
        let sampleData: [Restaurant] = [
            Restaurant(
                ID: UUID(),
                name: "California Kitchen",
                location: Location(latitude: 0.0, longitude: 0.0),
                address: "Pune",
                rating: 5.0,
                reviews: [],
                images: ["apple_pie"],
                cuisine: [.northIndian]
            ),
            Restaurant(ID: UUID(),
                       name: "LA Kitchen",
                       location: Location(latitude: 1.0, longitude: 1.0),
                       address: "Pune",
                       rating:4.0,
                       reviews: [],
                       images: ["biryani"],
                       cuisine: [.American]),
            Restaurant(ID: UUID(),
                       name: "NYC Kitchen",
                       location: Location(latitude: 1.0, longitude: 1.0),
                       address: "Pune",
                       rating:4.2,
                       reviews: [],
                       images: ["bbq_ribs"],
                       cuisine: [.Mughlai])

        ]
        
        self.restaurants = sampleData
    }
}

