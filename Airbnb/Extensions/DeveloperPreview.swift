//
//  DeveloperPreview.swift
//  Airbnb
//
//  Created by Lin Thit on 5/18/24.
//

import Foundation

class DeveloperPreview {
    
    static let shared = DeveloperPreview()
    
    private init() { }
    
    var listings: [Listing] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Robert Downey",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 1,
            numberOfBathrooms: 1,
            numberOfGuests: 2,
            numberOfBeds: 1,
            pricePerNight: 57,
            latitude: 25.7850,
            longtitude: -80.1936,
            imageURLs: ["listing-1", "listing-3", "listing-2", "listing-4"],
            address: "124 Sideline St",
            city: "Miami",
            state: "Stare",
            title: "Miami Villa",
            rating: 4.86,
            features: [.selfCheckIn,.superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .pool],
            type: .house
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 567,
            latitude: 25.7850,
            longtitude: -80.1936,
            imageURLs: ["listing-2", "listing-1", "listing-3", "listing-4"],
            address: "124 Main St",
            city: "Los Angeles",
            state: "Florida",
            title: "Miami Villa",
            rating: 4.86,
            features: [.selfCheckIn],
            amenities: [.wifi, .alarmSystem, .tv, .pool],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Hunter Hunts",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 2,
            numberOfBathrooms: 3,
            numberOfGuests: 6,
            numberOfBeds: 4,
            pricePerNight: 567,
            latitude: 25.7850,
            longtitude: -80.1936,
            imageURLs: ["listing-3", "listing-4", "listing-1", "listing-2"],
            address: "124 Main St",
            city: "Miami",
            state: "Florida",
            title: "Miami Villa",
            rating: 4.86,
            features: [.selfCheckIn,.superHost],
            amenities: [.wifi, .tv],
            type: .townHouse
        )
    ]
}
