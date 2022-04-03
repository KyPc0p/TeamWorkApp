//
//  MyPageViewController.swift
//  TeamWorkApp
//
//  Created by Iliya Mayasov on 02.04.2022.
//

import UIKit

class MyPageViewController: UIViewController {
    
    var myPage: User!
    
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var profilePhotosTableView: UITableView!
    @IBOutlet weak var fullNameTitle: UILabel!
    @IBOutlet weak var profileInfoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profilePhotosTableView.dataSource = self
        profilePhotosTableView.delegate = self
        fullNameTitle.text = myPage.person.fullName
        profileInfoLabel.text = myPage.person.personalInfo
    }
    
    override func viewDidLayoutSubviews() {
        avatarImage.image = UIImage(named: myPage.person.profileAvatar)
        avatarImage.layer.cornerRadius = avatarImage.frame.height / 2
    }
    
}

extension MyPageViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        myPage.person.profilePhotos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "Cell",
            for:  indexPath
        ) as! ProfilePhotosTableViewCell
        
        let photo = myPage.person.profilePhotos[indexPath.row]
        cell.myImage.image = UIImage(named: "\(photo)")
        
        return cell
    }
}

extension MyPageViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        350
    }
}
