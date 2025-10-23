//
//  ProfileViewModel.swift
//  EjercicioMVVM
//
//  Created by DAA on 15/10/25.
//

import Foundation

class ProfileViewModel {
    let user: User
    
    var nameText:String{
        return user.name
    }
    
    var userNameText: String{
        return user.username
    }
    
    var bioText: String{
        return user.bio
    }
    
    init() {
        self.user = User(name: "David", username: "david23", bio: "holaa", postCount: 4, followerCount: 1000, followingCount: 800)
    }
}
