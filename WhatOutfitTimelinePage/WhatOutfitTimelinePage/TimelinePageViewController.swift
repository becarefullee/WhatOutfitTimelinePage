//
//  TimelinePageViewController.swift
//  WhatOutfitTimelinePage
//
//  Created by Becarefullee on 16/10/26.
//  Copyright © 2016年 Becarefullee. All rights reserved.
//

import UIKit


fileprivate let reuseIdentifier = "Cell"



class TimelinePageViewController: UITableViewController {

  
  var screenWidth: CGFloat = UIScreen.main.bounds.width
  fileprivate var dataSource = [Post]()
  
  override func viewDidLoad() {
      super.viewDidLoad()
      setupDataSouce()
  }

  func setupDataSouce() {
    for i in 0...5 {
      let date = NSDate()
      if i % 2 == 0 {
        let post = Post(userName: "Eddie", postTime: date, numberOfLikes: 12, profileImage: "IMG", contentImage: "IMG-1")
            dataSource.append(post)
      }else {
        let post = Post(userName: "Jobs", postTime: date, numberOfLikes: 133, profileImage: "Jobs", contentImage: "IMG-0")
        dataSource.append(post)
      }
    }
  }
  
  @IBAction func likeBtnPressed(_ sender: UIButton) {
    print("Like Btn Pressed")
  }
  
}



extension TimelinePageViewController {
  
  
  // MARK: - Table view data source
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    // #warning Incomplete implementation, return the number of sections
    return dataSource.count
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    // #warning Incomplete implementation, return the number of rows
    return 1
  }

  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) as! PostContent
    cell.configure(post: dataSource[indexPath.section])
    cell.selectionStyle = .none
    return cell
  }
 
  override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    let headerCell = tableView.dequeueReusableCell(withIdentifier: "Header") as! HeaderCell
    headerCell.configure(post: dataSource[section])
    headerCell.backgroundColor = UIColor.white
    headerCell.alpha = 1.0
    return headerCell
  }
  
  override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return screenWidth + 44
  }
}
