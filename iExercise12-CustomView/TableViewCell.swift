//
//  TableViewCell.swift
//  iExercise12-CustomView
//
//  Created by Minh Tan Vu on 23/05/2023.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var customImage: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
