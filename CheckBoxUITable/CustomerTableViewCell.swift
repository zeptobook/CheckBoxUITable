//
//  CustomerTableViewCell.swift
//  CheckBoxUITable
//
//  Created by Adesh on 05/03/23.
//

import UIKit

class CustomerTableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel?
    @IBOutlet weak var checkbox: CheckBoxView?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(customer: Customer) {
        if(customer.isSelected) {
            self.checkbox!.markAsChecked()
        } else {
            self.checkbox!.markAsUnChecked()
        }
        
        self.name?.text = customer.name
        
        self.checkbox?.checkBoxChanged = {
            if(!customer.isSelected){
                self.checkbox!.markAsChecked()
                customer.isSelected = true
            } else {
                self.checkbox!.markAsUnChecked()
                customer.isSelected = false
            }
        }
    }

}
