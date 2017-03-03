//
//  RepoCell.swift
//  GithubDemo
//
//  Created by Shreyas Tawre on 3/2/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class RepoCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var ownerAvatarImageView: UIImageView!
    @IBOutlet weak var starsImageView: UIImageView!
    @IBOutlet weak var forkImageView: UIImageView!
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var forkLabel: UILabel!
    
    var repo: GithubRepo! {
        didSet {
            titleLabel.text = repo.name
            authorLabel.text = repo.ownerHandle
            descriptionLabel.text = repo.repoDescription
            ownerAvatarImageView.setImageWith(URL(string: repo.ownerAvatarURL!)!)
            starLabel.text = String(describing: repo.stars!)
            forkLabel.text = String(describing: repo.forks!)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        ownerAvatarImageView.layer.cornerRadius = 6
        starsImageView.image = UIImage(named: "star")
        forkImageView.image = UIImage(named: "fork")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
