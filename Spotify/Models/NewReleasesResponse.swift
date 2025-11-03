//
//  NewReleasesResponse.swift
//  Spotify
//
//  Created by khamzaev on 31.10.2025.
//

import Foundation

struct NewReleasesResponse: Codable {
    let albums: AlbumsResponse
    
}

struct AlbumsResponse: Codable {
    let items: [Album]
}

struct Album: Codable {
    let album_type: String
    let availabe_markets: [String]
    let id: String
    let images: [APIImage]
    let name: String
    let release_data: String
    let total_tracks: Int
    let artists: [Artist]
}

