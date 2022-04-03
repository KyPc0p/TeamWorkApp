//
//  NewsTableViewController.swift
//  TeamWorkApp
//
//  Created by Назар Ткаченко on 03.04.2022.
//

import UIKit

class NewsTableViewController: UITableViewController {
    
    var user = User.getUserData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = view.frame.height / 2
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return user.listOfFriends.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let friend = user.listOfFriends[indexPath.row]
        let photo = friend.profilePhotos[0]
        let news = friend.profileAvatar
        
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: "newsTableViewSell"
        ) as? NewsTableViewCell else { return UITableViewCell() }
        cell.nameLabel.text = news
        cell.avatarImage.image = UIImage(named: news)
        cell.photoImage.image = UIImage(named: photo)
        cell.timeLabel.text = "Added a photo \(Int.random(in: 1...24)) hours ago "
        
        return cell
    }
}
