//
//  PlaceTableViewCell.swift
//  TripApp
//
//  Created by Orangeodc11 on 26/4/2022.
//

import UIKit

class PlaceTableViewCell: UITableViewCell {
    @IBOutlet weak var Place: UILabel!
    @IBOutlet weak var Category: UILabel!
    @IBOutlet weak var Distance: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
