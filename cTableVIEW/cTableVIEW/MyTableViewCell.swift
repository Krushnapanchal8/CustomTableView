//
//  MyTableViewCell.swift
//  cTableVIEW
//
//  Created by Mac on 17/06/1943 Saka.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var ratingLabel: UILabel!
    
    @IBOutlet weak var countryLabel: UILabel!
    
    @IBOutlet weak var playerNameLabel: UILabel!
    
    @IBOutlet weak var rankLabel: UILabel!
    
    @IBOutlet weak var playerImage: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
