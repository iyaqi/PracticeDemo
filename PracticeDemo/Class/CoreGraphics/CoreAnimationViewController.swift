//
//  CoreAnimationViewController.swift
//  PracticeDemo
//
//  Created by Dodge on 2017/10/17.
//  Copyright © 2017年 奇哥Dodge. All rights reserved.
//

import UIKit

class CoreAnimationViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    lazy var tableView:UITableView? = UITableView(frame:
        CGRect(x: 0, y: 0, width: kScreenWidth, height: kScreenHeight), style:.plain)
    lazy var datas = ["基础动画","逐帧动画","动画组","转场动画","仿射变换","支付宝支付动画"]
    let cellIdentifier = "CoreAnimation"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        let zhifubao = ZhiFuBaoAnimaitonViewController()
        switch indexPath.row {
        case 0:
            
            break
        case 1:
            
            break
        case 2:
            
            break
        case 3:
            
            break
        case 4:
            
            break
        case 5:
            self.navigationController?.pushViewController(zhifubao, animated: true)
            break
        default:
            break
        }
    }
    
}



