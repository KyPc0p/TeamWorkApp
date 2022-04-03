//
//  NewsTableViewCell.swift
//  TeamWorkApp
//
//  Created by Назар Ткаченко on 03.04.2022.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var photoImage: UIImageView!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.avatarImage.layer.cornerRadius = self.avatarImage.frame.width / 2
        self.avatarImage.clipsToBounds = true
    }
}
