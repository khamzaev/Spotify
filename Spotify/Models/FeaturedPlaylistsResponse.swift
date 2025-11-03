//
//  FeaturedPlaylistsResponse.swift
//  Spotify
//
//  Created by khamzaev on 31.10.2025.
//

import Foundation

struct FeaturedPlaylistsResponse: Codable {
    let playlists: PlaylistResponse
}

struct PlaylistResponse: Codable {
    let item: [Playlist]
}

struct User: Codable {
    let display_name: String
    let external_urls: [String: String]
    let id: String
    
}
