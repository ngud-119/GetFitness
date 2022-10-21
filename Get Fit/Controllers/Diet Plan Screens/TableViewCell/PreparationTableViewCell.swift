//
//  PreparationTableViewCell.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 21/10/22.
//

import UIKit

// Class for preparation table view cell.
class PreparationTableViewCell: UITableViewCell
{
    
    @IBOutlet weak var stepsCountView: UIView!
    @IBOutlet weak var countNumber: UILabel!
    @IBOutlet weak var ProcedureText: UILabel!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
        stepsCountView.makeViewCircular()
    }
    
    public func configureList(countNumber: String, procedureText: String)
    {
        self.countNumber.text = countNumber
        self.ProcedureText.text = procedureText
    }
}
