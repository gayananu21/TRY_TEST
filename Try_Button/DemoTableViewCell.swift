//
//  DemoTableViewCell.swift
//  Try_Button
//
//  Created by Gayan Disanayaka on 3/18/21.
//  Copyright © 2021 Gayan Disanayaka. All rights reserved.
//

import UIKit


protocol DemoTableViewCellDelegate: AnyObject {
    func didTapButton()
    func minusDidTapButton()
}

class DemoTableViewCell: UITableViewCell {
    
    weak var delegate: DemoTableViewCellDelegate?
    
    static let identifier = "DemoTableViewCell"
    
    static func nib() -> UINib {
        
        return UINib(nibName: "DemoTableViewCell", bundle: nil)
        
    }
    
    
    var myCount:Int = 1
    
    
    @IBOutlet var myButton: UIButton!
    @IBOutlet var myLabel: UILabel!
      @IBOutlet var minusButton: UIButton!
    private var title: String = ""
    
    @IBAction func didTapButton () {
        
        delegate?.didTapButton()
        
        self.myCount = self.myCount+1
        self.myLabel.text = String(self.myCount)
        
        
        
    }
    
    
    @IBAction func minusDidTapButton () {
        
        delegate?.minusDidTapButton()
        
        self.myCount = self.myCount-1
        self.myLabel.text = String(self.myCount)
        
        
    }
    func configure(with title: String){
        
        //self.title = title
        //myButton.setTitle(title, for: .normal)
       
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
