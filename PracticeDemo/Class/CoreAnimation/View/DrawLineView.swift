//
//  DrawLineView.swift
//  PracticeDemo
//
//  Created by Dodge on 2017/10/17.
//  Copyright © 2017年 奇哥Dodge. All rights reserved.
//

import UIKit

class DrawLineView: UIView {


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
        let bezierPath = UIBezierPath()

        bezierPath.move(to: CGPoint(x: 80, y: 200))
        bezierPath.addLine(to: CGPoint(x: 180, y: 200))
        bezierPath.lineWidth = 5
        UIColor.red.setStroke()
        bezierPath.stroke()
        
    }
}
