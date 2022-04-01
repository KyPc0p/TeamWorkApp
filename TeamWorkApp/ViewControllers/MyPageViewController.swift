//
//  MyPageViewController.swift
//  TeamWorkApp
//
//  Created by Iliya Mayasov on 02.04.2022.
//

import UIKit

class MyPageViewController: UIViewController {
    
    var myProfile: User!
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var profilePhotosTableView: UITableView!
    @IBOutlet weak var fullNameTitle: UILabel!
    @IBOutlet weak var profileInfoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profilePhotosTableView.dataSource = self
        profilePhotosTableView.delegate = self
        avatarImage.image = UIImage(named: myProfile.person.profileAvatar)
        avatarImage.layer.cornerRadius = avatarImage.frame.height / 2
        fullNameTitle.text = myProfile.person.fullName
        profileInfoLabel.text = myProfile.person.personalInfo
    }
}
extension MyPageViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        myProfile.person.profilePhotos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for:  indexPath)
        let photo = myProfile.person.profilePhotos[indexPath.row]
        cell.imageView?.image = UIImage(named: "\(photo)")
        return cell
    }
}

extension MyPageViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        350
    }
}
