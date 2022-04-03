//
//  FriendListViewController.swift
//  TeamWorkApp
//
//  Created by Iliya Mayasov on 30.03.2022.
//
import Foundation
import UIKit

class FriendListViewController: UITableViewController {
    
    var friends: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
    }
    
// MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        friends.listOfFriends.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        let friend = friends.listOfFriends[indexPath.row]
        content.image = UIImage(named: friend.profileAvatar)
        content.text = friend.fullName
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        cell.contentConfiguration = content
        return cell
    }
    
// MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let friendPageVC = segue.destination as? FriendPageViewController else { return }
        friendPageVC.friend = sender as? Person
    }
}

// MARK: - UITableViewDelegate
extension FriendListViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let friend = friends.listOfFriends[indexPath.row]
        performSegue(withIdentifier: "showDetails", sender: friend)
    }
    
    override func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool { false }
}
