//
//  Post.swift
//  WhatOutfitTimelinePage
//
//  Created by Becarefullee on 16/10/26.
//  Copyright © 2016年 Becarefullee. All rights reserved.
//

import Foundation
import UIKit


class Post {
  
  
  var profileImage: UIImage
  var userName: String
  var postTime: NSDate
  var contentImage: UIImage
  var numberOfLikes: Int
  var likedByCurrentUser: Bool
  
  init(userName: String, postTime: NSDate, numberOfLikes: Int, profileImage: String, contentImage: String, likedByCurrentUser: Bool = false) {
    self.userName = userName
    self.postTime = postTime
    self.numberOfLikes = numberOfLikes
    self.profileImage = UIImage(named: profileImage)!
    self.contentImage = UIImage(named: contentImage)!
    self.likedByCurrentUser = likedByCurrentUser
  }
  
}
