//
//  CustomCell.swift
//  CoachApp
//
//  Created by icarrillog on 20/01/22.
//

import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet weak var vTableView: UIView!
    @IBOutlet weak var lblExercises: UILabel!
    @IBOutlet weak var imgExercises: UIImageView!
    @IBOutlet weak var vExercises: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        vExercises.layer.cornerRadius = 40
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
