//
//  HeaderCell.swift
//  WhatOutfitTimelinePage
//
//  Created by Becarefullee on 16/10/26.
//  Copyright © 2016年 Becarefullee. All rights reserved.
//

import UIKit

class HeaderCell: UITableViewCell {

  
  var headerInfo: Post?
  
  @IBOutlet weak var profileImage: UIImageView!
  @IBOutlet weak var postTime: UILabel!
  @IBOutlet weak var userName: UILabel!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        profileImage.layer.cornerRadius = 16
        profileImage.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
      
        // Configure the view for the selected state
    }

  
  func configure(post:Post) {
    profileImage.image = post.profileImage
    postTime.text = "1 HOUR AGO"
    userName.text = post.userName
  }
  
}

