//
//  Listing.swift
//  Airbnb
//
//  Created by Lin Thit on 5/18/24.
//

import Foundation

struct Listing: Identifiable, Codable, Hashable {
    
    let id: String
    let ownerUid: String
    let ownerName: String
    let ownerImageUrl: String
    let numberOfBedrooms: Int
    let numberOfBathrooms: Int
    let numberOfGuests: Int
    let numberOfBeds: Int
    var pricePerNight: Int
    let latitude: Double
    let longtitude: Double
    var imageURLs: [String]
    let address: String
    let city: String
    let state: String
    let title: String
    var rating: Double
    var features: [ListingFeatures]
    var amenities: [ListingAmenities]
    let type: ListingType
}

enum ListingFeatures: Int, Codable, Identifiable, Hashable {
    case selfCheckIn
    case superHost
    
    var imageName: String {
        switch self {
        case .selfCheckIn: "door.left.hand.open"
        case .superHost: "medal"
        }
    }
    
    var title: String {
        switch self {
        case .selfCheckIn: "Selft check-in"
        case .superHost: "Superhost"
        }
    }
    
    var subtitle: String {
        switch self {
        case .selfCheckIn: "Check yourself in with the keypad."
        case .superHost: "Superhosts are experienced, highly rated hosts who are commited to providing greate stars for guests."
        }
    }
    
    var id: Int { return self.rawValue }
}

enum ListingAmenities: Int, Codable, Identifiable, Hashable {
    case pool
    case kitchen
    case wifi
    case laundry
    case tv
    case alarmSystem
    case office
    case balcony
    
    var title: String {
        switch self {
        case .pool: "Pool"
        case .kitchen: "Kitchen"
        case .wifi: "Wifi"
        case .laundry: "Laundry"
        case .tv: "TV"
        case .alarmSystem: "Alarm System"
        case .office: "Office"
        case .balcony: "Balcony"
        }
    }
    
    var imageName: String {
        switch self {
        case .pool: "figure.pool.swim"
        case .kitchen: "fork.knife"
        case .wifi: "wifi"
        case .laundry: "laundry"
        case .tv: "tv"
        case .alarmSystem: "checkerboard.shield"
        case .office: "pencil.and.ruler.fill"
        case .balcony: "building"
        }
    }
    
    var id: Int { return self.rawValue }
}

enum ListingType: Int, Codable, Identifiable, Hashable {
    case apartment
    case house
    case townHouse
    case villa
    
    var description: String {
        switch self {
        case .apartment: "Apartment"
        case .house: "House"
        case .townHouse: "Town Home"
        case .villa: "Villa"
        }
    }
    
    var id: Int { return self.rawValue }
}
