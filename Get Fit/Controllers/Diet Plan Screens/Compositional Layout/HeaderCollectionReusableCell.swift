//
//  HeaderCollectionReusableCellCollectionReusableView.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 29/12/22.
//

import UIKit

class HeaderCollectionReusableCell: UICollectionReusableView
{
        static let identifier = "HeaderCollectionReusableCell"
    private let label: UILabel = {
       
        let label = UILabel()
        label.text = "Header"
        label.textAlignment = .left
        label.textColor = .white
        return label
        
    }()
    
    public func configure()
    {
        backgroundColor = .systemGreen
        addSubview(label)
    }
    
    override func layoutSubviews() {
        
        super.layoutSubviews()
        label.frame = bounds 
    }
    
}
