//
//  CircularProgressView.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 10/10/22.
//

import UIKit

class CircularProgressView: UIView
{
    @IBOutlet weak var setCompletedLabel: UILabel!
    @IBOutlet weak var totalSetsLabel: UILabel!
    private var backgroundLayer: CAShapeLayer!
    private var foregroundLayer: CAShapeLayer!
    
    override func draw(_ rect: CGRect)
    {
        let width = rect.width
        let height = rect.height
        
        let lineWidth = 0.1 * min(width,height)
        
        let backgroundStrokeColor = UIColor.white.cgColor
    
        backgroundLayer = createCircularLayer(rect: rect, strokeColor: backgroundStrokeColor, fillColor: UIColor.clear.cgColor, lineWidth: lineWidth)
        
        foregroundLayer = createCircularLayer(rect: rect, strokeColor: UIColor.red.cgColor, fillColor: UIColor.clear.cgColor, lineWidth: lineWidth)
        
        foregroundLayer.strokeEnd = 0
        
        layer.addSublayer(backgroundLayer)
        layer.addSublayer(foregroundLayer)
        // updateSetCount(completedSet: 4, totalSets: 5)
    }
    public func setStroke(strokeVal: CGFloat)
    {
        foregroundLayer.strokeEnd = strokeVal
    }
    public func updateSetCount(completedSet: Int,totalSets: Int)
    {
        // print("Entered update method block...")
        setCompletedLabel?.text = "\(completedSet)"
        totalSetsLabel?.text = "\(totalSets)"
    }
    
    private func createCircularLayer(rect: CGRect , strokeColor: CGColor , fillColor: CGColor ,lineWidth: CGFloat) -> CAShapeLayer
    {
        let width = rect.width
        let height = rect.height
        
        let center = CGPoint(x: width/2, y: height/2)
        
        let radius = ( min(height,width)-lineWidth ) / 2
        
        let startAngle = -CGFloat.pi/2
        let engAngle = startAngle + 2 * CGFloat.pi
        
        let circularPath = UIBezierPath(arcCenter: center, radius: radius, startAngle: startAngle, endAngle: engAngle, clockwise: true)
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = circularPath.cgPath
        shapeLayer.fillColor = fillColor
        shapeLayer.strokeColor = strokeColor
        shapeLayer.lineWidth = lineWidth
        shapeLayer.lineCap = .round
        
        return shapeLayer
    }
}
