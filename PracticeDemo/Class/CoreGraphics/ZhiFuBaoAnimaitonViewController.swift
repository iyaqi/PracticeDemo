//
//  ZhiFuBaoAnimaitonViewController.swift
//  PracticeDemo
//
//  Created by Dodge on 2017/10/17.
//  Copyright © 2017年 奇哥Dodge. All rights reserved.
//

import UIKit
import YYKit
import SDAutoLayout

class ZhiFuBaoAnimaitonViewController: UIViewController {
        
        lazy var circleLayer:CAShapeLayer = CAShapeLayer()
        lazy var tickLayer:CAShapeLayer = CAShapeLayer()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            self.view.backgroundColor = UIColor.white
            self.title = "支付宝动画"
            
            
        }
        
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            showCircle()
            
        }
        
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            showTick()
            
        }
        
        
        func showCircle() -> Void {
            
            let circlePath = UIBezierPath.init(arcCenter: self.view.center, radius: 60, startAngle: CGFloat(-Double.pi/2), endAngle: CGFloat(3 * Double.pi / 2), clockwise: true)
            circleLayer.path = circlePath.cgPath
            circleLayer.fillColor = UIColor.clear.cgColor
            circleLayer.strokeColor = UIColor.blue.cgColor
            circleLayer.lineWidth = 2;
            circleLayer.beginTime = CACurrentMediaTime()
            self.view.layer.addSublayer(circleLayer)
            
            
            let showAnnimation = CABasicAnimation.init(keyPath: "strokeEnd")
            showAnnimation.fromValue = 0
            showAnnimation.toValue = 1
            showAnnimation.duration = 2;
            showAnnimation.isRemovedOnCompletion = true
            showAnnimation.fillMode = kCAFillModeForwards
            
            
            let disMissAnnimation = CABasicAnimation.init(keyPath: "strokeStart")
            disMissAnnimation.fromValue = 0
            disMissAnnimation.toValue = 1
            disMissAnnimation.duration = 2;
            disMissAnnimation.isRemovedOnCompletion = true
            disMissAnnimation.fillMode = kCAFillModeForwards
            disMissAnnimation.beginTime = 2.0
            
            
            let group = CAAnimationGroup()
            group.animations = [showAnnimation,disMissAnnimation]
            group.duration = 4
            group.repeatCount = MAXFLOAT
            group.isRemovedOnCompletion = true
            circleLayer.add(group, forKey:"")
        }
        
        func showTick() -> Void {
            circleLayer.speed = 0
            let tickPath = UIBezierPath.init()
            tickPath.move(to: CGPoint(x: self.view.centerX-30, y: self.view.centerY))
            tickPath.addLine(to: CGPoint(x: self.view.centerX, y: self.view.centerY+30))
            tickPath.addLine(to: CGPoint(x: self.view.centerX+45, y: self.view.centerY-15))
            
            tickLayer.path = tickPath.cgPath
            tickLayer.lineWidth = 2
            tickLayer.fillColor = UIColor.clear.cgColor
            tickLayer.strokeColor = UIColor.blue.cgColor
            self.view.layer.addSublayer(tickLayer)
            
            let tickAnnimation = CABasicAnimation.init(keyPath: "strokeEnd")
            tickAnnimation.fromValue = 0
            tickAnnimation.toValue = 1
            tickAnnimation.duration = 2
            
            tickLayer.add(tickAnnimation, forKey: "")
        }
        
}

