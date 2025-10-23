//
//  StatsViewModel.swift
//  EjercicioMVVM
//
//  Created by DAA on 15/10/25.
//

import Foundation

class StatsViewModel{
    let user: User
    
    var postsText: String{
        return "\(user.postCount) posts"
    }
    
    var followersText: String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        let formattedFollowers = numberFormatter.string(from: NSNumber(user.followerCount)) ?? ""
        return "\(formattedFollowers) followers"
    }
    
    var followingText: String {
        return "\(user.followingCount) following"
    }
    
    init(user: User) {
        self.user = user
    }
}
