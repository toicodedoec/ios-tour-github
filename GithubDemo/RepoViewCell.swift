//
//  RepoViewCell.swift
//  GithubDemo
//
//  Created by john on 2/23/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit
import AFNetworking

class RepoViewCell: UITableViewCell {

    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var author: UILabel!
    @IBOutlet weak var forks: UILabel!
    @IBOutlet weak var stars: UILabel!
    @IBOutlet weak var desc: UILabel!
    
    var selectedRepo: GithubRepo! {
        didSet {
            avatar.setImageWith(URL(string: selectedRepo.ownerAvatarURL!)!)
            name.text = selectedRepo.name
            author.text = "by " + selectedRepo.ownerHandle!
            
            forks.text = String(describing: selectedRepo.forks!)
            stars.text = String(selectedRepo.stars!)
            desc.text = selectedRepo.repoDescription
        }
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
