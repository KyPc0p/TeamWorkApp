//
//  FriendPageViewController.swift
//  TeamWorkApp
//
//  Created by Iliya Mayasov on 30.03.2022.
//

import UIKit

class FriendPageViewController: UIViewController {
    
    var friend: Person!
    
    @IBOutlet weak var AvatarImage: UIImageView!
    @IBOutlet weak var fullNameTitle: UILabel!
    @IBOutlet weak var profileInfoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AvatarImage.image = UIImage(named: friend.profileAvatar)
        fullNameTitle.text = friend.fullName
        profileInfoLabel.text = friend.personalInfo
    }
}
