//
//  ContactListTableViewCell.swift
//  contactList
//
//  Created by guest1 on 01/05/21.
//

import UIKit

class ContactListTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var baseView: UIView!
    @IBOutlet weak var leftView: UIView!
    @IBOutlet weak var rightView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
