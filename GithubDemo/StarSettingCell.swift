//
//  StarSettingCell.swift
//  GithubDemo
//
//  Created by john on 2/23/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

protocol StarSettingCellDelegate {
    func starValueChanged(value: Float)
}

class StarSettingCell: UITableViewCell {
    
    @IBOutlet weak var lblStar: UILabel!
    
    var delegate: StarSettingCellDelegate!

    @IBAction func changeStar(_ sender: UISlider) {
        lblStar.text = String(describing: sender.value)
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
