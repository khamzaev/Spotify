//
//  AuthManager.swift
//  Spotify
//
//  Created by khamzaev on 15.10.2025.
//

import Foundation

final class AuthManager {
    static let shared = AuthManager()
    
    private init() {}
    
    public var signInURL: URL? {
        let scopes = "user-read-private"
        let base = "https://accounts.spotify.com/authorize"
        let string = "\(base)?response_type=code&client_id=\(Constants.clientID)&scope=\(scopes)&redirect_uri=\(Constants.testURI)&show_dialog=TRUE"
        return URL(string: string)
    }
    
    var isSignedIn: Bool {
        return false
    }
    
    private var accessToken: String? {
        return nil
    }
    
    private var refreshToken : String? {
        return nil
    }
    
    private var tokenExpirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
    
    public func exchangeCodeForToken(code: String, conpletion: @escaping ((Bool) -> Void)){
        
    }
    
    public func refreshAccessToken() {
        
    }
    
    public func cacheToken() {
        
    }
}
