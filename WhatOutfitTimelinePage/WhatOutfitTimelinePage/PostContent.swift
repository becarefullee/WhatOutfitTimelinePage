//
//  PostContent.swift
//  WhatOutfitTimelinePage
//
//  Created by Becarefullee on 16/10/26.
//  Copyright © 2016年 Becarefullee. All rights reserved.
//

import UIKit

class PostContent: UITableViewCell {

  var post: Post?
  var screenWidth: CGFloat = UIScreen.main.bounds.width

  
  @IBOutlet weak var contentImage: UIImageView!
  @IBOutlet weak var likeBtn: UIButton!
  @IBOutlet weak var numberOfLikes: UILabel!
  
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
      contentImage.bounds.size.width = screenWidth
      contentImage.bounds.size.height = screenWidth
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
  
  func configure(post: Post) {
    contentImage.image = post.contentImage
    numberOfLikes.text = "\(post.numberOfLikes)Likes"
  }
  

}
