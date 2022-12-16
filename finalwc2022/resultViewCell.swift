//
//  resultViewCell.swift
//  finalwc2022
//
//  Created by Jirapat P on 28/11/2565 BE.
//

import UIKit

class resultViewCell: UITableViewCell {

    
    @IBOutlet weak var matchNo: UILabel!
    
    @IBOutlet weak var team1Img: UIImageView!
    @IBOutlet weak var team2Img: UIImageView!
    
    @IBOutlet weak var team1Label: UILabel!
    @IBOutlet weak var team2Label: UILabel!
    
    @IBOutlet weak var resultNo: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
