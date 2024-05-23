//
//  ExploreService.swift
//  Airbnb
//
//  Created by Lin Thit on 5/18/24.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
