//
//  Playlist.swift
//  Spotify
//
//  Created by khamzaev on 15.10.2025.
//

import Foundation

struct Playlist: Codable {
    let discription: String
    let external_urls: [String: String]
    let id: String
    let images: [APIImage]
    let name: String
    let owner: User
}
