//
//  MyTableViewCell.swift
//  Try_Button
//
//  Created by Gayan Disanayaka on 3/18/21.
//  Copyright © 2021 Gayan Disanayaka. All rights reserved.
//

import UIKit

protocol MyTableViewCellDelegate: AnyObject
{
    func didTapButton(with title: String)
    
}

class MyTableViewCell: UITableViewCell {
    
    weak var delegate: MyTableViewCellDelegate?
    
    @IBOutlet weak var count: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
