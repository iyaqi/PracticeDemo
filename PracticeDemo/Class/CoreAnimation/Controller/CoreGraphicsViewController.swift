//
//  CoreGraphicsViewController.swift
//  PracticeDemo
//
//  Created by Dodge on 2017/10/17.
//  Copyright © 2017年 奇哥Dodge. All rights reserved.
//

import UIKit

class CoreGraphicsViewController: UITableViewController {
    
    //    lazy var tableView:UITableView? = UITableView(frame:
    //        CGRect(x: 0, y: 0, width: kScreenWidth, height: kScreenHeight), style:.plain)
    lazy var datas = ["line","circle","triangle","square","Gradient","PDF"]
    let cellIdentifier = "CoreGraphics"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        //        self.view.addSubview(self.tableView!)
        //        tableView?.delegate = self;
        //        tableView?.dataSource = self;
    }
    
    
    // MARK: ---
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell =  UITableViewCell(style: .default, reuseIdentifier:cellIdentifier)
        cell.textLabel?.text = datas[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        let selectTitle = cell?.textLabel?.text
        let drawingView = DrawingViewController()
        drawingView.selectTitle = selectTitle!
        self.navigationController?.pushViewController(drawingView, animated: true)
    }
}

