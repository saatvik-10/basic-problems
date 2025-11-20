//
//  Model.swift
//  RestroDemoAmitSir
//
//  Created by SDC-USER on 19/11/25.
//
import Foundation

struct Location {
    var latitude: Double
    var longitude: Double
}

enum CuisineType : String, CaseIterable{
    case chinese, italian, indian, american, japanese, mughlai, french, korean, mexican
    
    var imageName: String{
        switch self {
            case .chinese:
            return "chinese"
        case .italian:
            return "italian"
        case .indian:
            return "gulab_jamun"
        case .american:
            return "american"
        case .japanese:
            return "japanese"
        case .mughlai:
            return "mughlai"
        case .french:
            return "french"
        case .korean:
            return "korean"
        case .mexican:
            return "mexican"
        }
    }
}

struct Restaurant {
    var id: UUID
    var name: String
    var address: String
    var location: Location
    var rating: Double
    var review:[String]
    var images:[String]
    var cuisine:[CuisineType]
    var isFavourite: Bool = false
}

//struct Cuisine {
//    var id: UUID
//    var name: String
//    var image: [String]
//}

struct Menu {
    
}
