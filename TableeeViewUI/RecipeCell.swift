//
//  RecipeCell.swift
//  TableeeViewUI
//
//  Created by Kumari Mansi on 15/11/24.
//

import UIKit

class RecipeCell: UITableViewCell {

    @IBOutlet weak var lblRecipeName: UILabel!
    @IBOutlet weak var recipeImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
