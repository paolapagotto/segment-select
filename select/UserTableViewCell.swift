//
//  UserTableViewCell.swift
//  select
//
//  Created by Paola Pagotto on 07/10/2020.
//  Copyright © 2020 Paola Pagotto. All rights reserved.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    @IBOutlet weak var imageUser: UIImageView!
    
    @IBOutlet weak var labelUserName: UILabel!
    
    func setup (user: User){
        labelUserName.text = user.name
        imageUser.image = UIImage(named: user.image)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
