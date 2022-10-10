//
//  CircularProgressView.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 10/10/22.
//

import UIKit

class CircularProgressView: UIView
{
    
    let circlePath = UIBezierPath(arcCenter: view.center, radius: 150, startAngle: 0, endAngle: .pi * 2, clockwise: true)
    
    let shape = CAShapeLayer()
    shape.path = circlePath.cgPath
    shape.lineWidth = 15.0
    shape.strokeColor = UIColor.blue.cgColor
    view.layer.addSublayer(shape)
}
