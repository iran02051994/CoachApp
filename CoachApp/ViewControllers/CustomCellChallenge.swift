//
//  CustomCellChallenge.swift
//  CoachApp
//
//  Created by icarrillog on 21/01/22.
//

import UIKit

class CustomCellChallenge: UITableViewCell {
    @IBOutlet weak var vCustomCellChallenge: UIView!
    @IBOutlet weak var vChallenges: UIView!
    @IBOutlet weak var lblChallenges: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
