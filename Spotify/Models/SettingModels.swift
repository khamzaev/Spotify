//
//  SettingModels.swift
//  Spotify
//
//  Created by khamzaev on 17.10.2025.
//

import Foundation

struct Section {
    let title: String
    let options: [Option]
}

struct Option {
    let title: String
    let handler: () -> Void
}
