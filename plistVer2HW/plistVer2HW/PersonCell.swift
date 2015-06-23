//
//  PersonCell.swift
//  plistVer2HW
//
//  Created by Richard H Woolley on 6/22/15.
//  Copyright (c) 2015 Bright Quasar Software, R.Woolley. All rights reserved.
//

import UIKit

class PersonCell: UITableViewCell {

  @IBOutlet weak var firstNameLabel: UILabel!

  @IBOutlet weak var lastNameLabel: UILabel!

  @IBOutlet weak var personImageView: UIImageView!
/*

  @IBOutlet weak var firstNameLabel: UILabel!

  @IBOutlet weak var lastNameLabel: UILabel!

  @IBOutlet weak var personImageView: UIImageView!

*/


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
