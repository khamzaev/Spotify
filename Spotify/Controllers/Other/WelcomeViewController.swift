//
//  WelcomeViewController.swift
//  Spotify
//
//  Created by khamzaev on 15.10.2025.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    private let signInButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitle("Sign In whit Spotify", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.layer.cornerRadius = 20
        button.clipsToBounds = true
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Spotify"
        view.backgroundColor = .systemGreen
        view.addSubview(signInButton)
        signInButton.addTarget(self, action: #selector(didTapSignIn), for: .touchUpInside)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        signInButton.frame = CGRect(
            x: 60,
            y: view.height-80-view.safeAreaInsets.bottom,
            width: view.width-120,
            height: 50)
        
    }
    
    @objc func didTapSignIn() {
        let vc = AuthViewController()
        vc.conpletionHandler = { [weak self] success in
            self?.handleSignIn(success: success)
        }
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private func handleSignIn(success: Bool) {
        
    }

}
