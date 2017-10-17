//
//  DrawingViewController.swift
//  PracticeDemo
//
//  Created by Dodge on 2017/10/17.
//  Copyright © 2017年 奇哥Dodge. All rights reserved.
//

import UIKit

class DrawingViewController: BaseViewController {

    lazy var selectTitle = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        print(selectTitle)
        
        drawView()
    }
    
    func drawView() {
        switch selectTitle {
        case "line":
            drawLine()
        case "circle":
            drawCircle()
        default:
            print("什么也没选择哦")
        }
    }
    
    
    func drawLine(){
        let drawLineView = DrawLineView()
        drawLineView.frame = self.view.bounds
        drawLineView.backgroundColor = UIColor.white
        self.view.addSubview(drawLineView)
    }
    
    func drawCircle(){
        let drawCircleView = DrawCircleView()
        drawCircleView.frame = self.view.bounds
        drawCircleView.backgroundColor = UIColor.white
        self.view.addSubview(drawCircleView)
    }
    
}
