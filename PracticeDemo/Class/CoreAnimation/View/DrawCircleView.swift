//
//  DrawCircleView.swift
//  PracticeDemo
//
//  Created by Dodge on 2017/10/17.
//  Copyright © 2017年 奇哥Dodge. All rights reserved.
//

import UIKit

class DrawCircleView: UIView {

    override func draw(_ rect: CGRect) {
        
        
        // Core graphic 方式
        //        let cgContext = UIGraphicsGetCurrentContext()
        //        let path = CGMutablePath()
        //        path.move(to: CGPoint(x: 80, y: 200))
        //        path.addLine(to: CGPoint(x: 180, y: 200))
        //        cgContext?.addPath(path)
        //
        //        cgContext?.setLineWidth(5)
        //        cgContext?.setStrokeColor(UIColor.red.cgColor)
        //
        //        cgContext?.drawPath(using: CGPathDrawingMode.stroke)
        //
        
        // bezierPath 方式
        let bezierPath = UIBezierPath(arcCenter: CGPoint(x: 100, y: 200), radius: 50, startAngle: 0, endAngle: 360, clockwise: true)
        bezierPath.lineWidth = 2
        UIColor.red.setStroke()
        bezierPath.stroke()
        
    }


}
