//
//  HeaderCollectionReusableCellCollectionReusableView.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 29/12/22.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView
{
    static let identifier = "HeaderCollectionReusableView"
    private let label: UILabel = {
       
        let label = UILabel()
        label.text = "Header"
        label.textAlignment = .left
        label.textColor = .white
        label.font = .systemFont(ofSize: 15.0, weight: .bold)
        return label
        
    }()
    
    public func configure()
    {
        backgroundColor = .clear
        addSubview(label)
    }
    
    override func layoutSubviews() {
        
        super.layoutSubviews()
        label.frame = bounds 
    }
    
}
