//
//  ViewModel.swift
//  Tikker
//
//  Created by Simon Wachtler on 20/03/21.
//

import Foundation

final class ViewModel: ObservableObject {
    private lazy var signInWithApple = SignInWithAppleCoordinator()
    @Published var user: User?
    
    func getRequested() {
        signInWithApple.getAppleRequest()
    }
    
    func getUserInfo() {
        if let userData = UserDefaults.standard.object(forKey: "user") as? Data,
           let userDecoded = try? JSONDecoder().decode(User.self, from: userData) {
        user = userDecoded
    }
    }
}
