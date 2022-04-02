//
//  FriendPageViewController.swift
//  TeamWorkApp
//
//  Created by Iliya Mayasov on 30.03.2022.
//

import UIKit

class FriendPageViewController: UIViewController {
    
    var friend: Person!
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var profilePhotosTableView: UITableView!
    @IBOutlet weak var fullNameTitle: UILabel!
    @IBOutlet weak var profileInfoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profilePhotosTableView.dataSource = self
        profilePhotosTableView.delegate = self
        fullNameTitle.text = friend.fullName
        profileInfoLabel.text = friend.personalInfo
    }

     override func viewDidLayoutSubviews() {
        avatarImage.image = UIImage(named: friend.profileAvatar)
        avatarImage.layer.cornerRadius = avatarImage.frame.height / 2
    }

}
 
extension FriendPageViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        friend.profilePhotos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for:  indexPath)
        let photo = friend.profilePhotos[indexPath.row]
        cell.imageView?.image = UIImage(named: "\(photo)")
        return cell
    }
}

extension FriendPageViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        350
    }
}
