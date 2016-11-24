//
//  WLTabBarViewController.swift
//  MyFengXianSheng
//
//  Created by mac pro on 16/11/23.
//  Copyright © 2016年 mac pro. All rights reserved.
//

import UIKit

class WLTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //发货
        addChildViewController(DispatchGoodsViewController(), title: "发货", imageName: "T1")
        //运单
        addChildViewController(BillOfFrightViewController(), title: "运单", imageName: "T2")
        //风信
        addChildViewController(MailViewController(), title: "风信", imageName: "T3")
        //账户
        addChildViewController(AccountViewController(), title: "账户", imageName: "T4")
    }
    
    
    
    //swift支持方法的重载，方法的重载:方法名称相同,但是参数不同. --> 1.参数的类型不同 2.参数的个数不同
    private func addChildViewController(_ childController: UIViewController,title:String,imageName:String) {
        //设置子控制器的tabBarItem的标题图片
        
        childController.title = title
        childController.tabBarController?.tabBar.backgroundColor = UIColor.black
        childController.tabBarItem.image = UIImage.init(named: imageName)
        childController.tabBarItem.selectedImage = UIImage.init(named: imageName + "_tap")
        //添加子控制器
        let childNav = UINavigationController.init(rootViewController: childController)
        addChildViewController(childNav)
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
