//
//  TextNewsTableViewCell.swift
//  VK
//
//  Created by Pauwell on 08.07.2021.
//

import UIKit

class TextNewsTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var textNews: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
