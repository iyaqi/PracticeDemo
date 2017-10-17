//
//  ViewController.swift
//  PracticeDemo
//
//  Created by Dodge on 2017/10/17.
//  Copyright © 2017年 奇哥Dodge. All rights reserved.
//

import UIKit

class HomeViewController:  BaseViewController,UITableViewDelegate,UITableViewDataSource {
    
    lazy var tableView:UITableView? = UITableView(frame:
        CGRect(x: 0, y: 0, width: kScreenWidth, height: kScreenHeight), style:.plain)
    lazy var datas = ["Core Graphics","Core Animation"]
    let cellIdentifier = "BaseCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Learn Demo"
        self.view.backgroundColor = UIColor.white
        self.view.addSubview(self.tableView!)
        tableView?.delegate = self;
        tableView?.dataSource = self;
    }
    
    
    // MARK: ---
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell =  UITableViewCell(style: .default, reuseIdentifier:cellIdentifier)
        cell.textLabel?.text = datas[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            
            self.navigationController?.pushViewController(CoreGraphicsViewController(), animated: true)
            break
        case 1:
            self.navigationController?.pushViewController(CoreAnimationViewController(), animated: true)
            break
        case 2:
            
            break
        case 3:
            
            break
        case 4:
            
            break
        case 5:
            break
        default:
            break
        }
    }
    
    
}
