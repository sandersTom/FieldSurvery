//
//  ObservationEventTableViewCell.swift
//  Field Survey
//
//  Created by t s on 4/13/18.
//  Copyright © 2018 Shuper. All rights reserved.
//

import UIKit

class ObservationEventTableViewCell: UITableViewCell {

    @IBOutlet weak var observationIconImageView: UIImageView!
    
    @IBOutlet weak var classificationLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
