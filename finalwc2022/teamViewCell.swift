//
//  teamViewCell.swift
//  finalwc2022
//
//  Created by Jirapat P on 28/11/2565 BE.
//

import UIKit

class teamViewCell: UITableViewCell {


    
    @IBOutlet weak var teamImg: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
