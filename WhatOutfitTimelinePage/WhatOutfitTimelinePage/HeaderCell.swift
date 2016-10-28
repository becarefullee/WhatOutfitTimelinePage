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
    postTime.text = convertDateToString(date: post.postTime)
    userName.text = post.userName
  }
  
  
  func convertDateToString(date:Date) -> String {
    let currentTime = Date()
    let calendar = Calendar.current
    let components: Set<Calendar.Component> = [.minute, .hour, .day, .month, .year]
    let result = calendar.dateComponents(components, from: date, to: currentTime)
    let year = result.year
    let month = result.month
    let day = result.day
    let hour = result.hour
    let min = result.minute
    if year != 0 {
      if year == 1 {
        return "1 YEAR AGO"
      }
      return "\(year!) YEARS AGO"
    }

    if month != 0 {
      if month == 1 {
        return "1 MONTH AGO"
      }
      return "\(month!) MONTHS AGO"
    }
    if day != 0 {
      if day == 1 {
        return "1 DAY AGO"
      }
      return "\(day!) DAYS AGO"
    }
    if hour != 0 {
      if hour == 1 {
        return "1 HOUR AGO"
      }
      return "\(hour!) HOURS AGO"
    }
    if min != 0 {
      if min == 1 {
        return "1 MININUTE AGO"
      }
      return "\(min!) MINUTES AGO"
    }
    return "1 MININUTE AGO"
  }
  
}

