//
//  StatsViewModel.swift
//  EjercicioMVVM
//
//  Created by DAA on 15/10/25.
//

import Foundation

class StatsViewModel{
    let user: User
    
    var postsText: String {
        return "\(user.postCount)\nposts"
    }
    
    var followersText: String {
        return "\(user.followerCount)\nfollowers"
    }
    
    var followingText: String {
        return "\(user.followingCount)\nfollowing"
    }
    
    init(user: User) {
        self.user = user
    }
}
