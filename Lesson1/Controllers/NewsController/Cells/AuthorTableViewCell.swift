//
//  AuthorTableViewCell.swift
//  VK
//
//  Created by Pauwell on 08.07.2021.
//

import UIKit

class AuthorTableViewCell: UITableViewCell {

    func clearCell() {
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        clearCell()
    }

    override func prepareForReuse() {
        clearCell()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
