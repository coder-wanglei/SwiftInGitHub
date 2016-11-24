//
//  AppDelegate+RootController.swift
//  MyFengXianSheng
//
//  Created by mac pro on 16/11/23.
//  Copyright © 2016年 mac pro. All rights reserved.
//

import Foundation
import UIKit

extension AppDelegate{
    /**
     *  首次启动轮播图
     */
    public func createLoadingScrollView(){
    
    }
    /**
     *  tabbar实例
     */
    public func setTabbarController(){
        
    }
    /**
     *  window实例
     */
    public func setAppWindows(){
        
    }
    /**
     *  设置根视图
     */
    public func setRootViewController(){
        
        window = UIWindow.init(frame: UIScreen.main.bounds)
        let WLTabBar = WLTabBarViewController()
        //避免受默认的半透明色影响，关闭
        WLTabBar.tabBar.isTranslucent = false
        //设置整体 tabBar 背景色
        WLTabBar.tabBar.barTintColor = UIColor.black
        //设置选中颜色
        WLTabBar.tabBar.tintColor = UIColor.red
        window?.rootViewController = WLTabBar
        window?.makeKeyAndVisible()
        
    }

}































