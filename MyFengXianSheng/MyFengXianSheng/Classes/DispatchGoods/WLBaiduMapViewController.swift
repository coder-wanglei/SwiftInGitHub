//
//  WLBaiduMapViewController.swift
//  MyFengXianSheng
//
//  Created by mac pro on 16/11/24.
//  Copyright © 2016年 mac pro. All rights reserved.
//

import UIKit

class WLBaiduMapViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.initUI()
    }
    func initUI()  {
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.init(image: UIImage.init(named: "redBack"), style: UIBarButtonItemStyle.plain, target: self, action: #selector(leftReturn))
        self.navigationItem.leftBarButtonItem?.tintColor = UIColor.red
        self.navigationItem.hidesBackButton = true
    }
    func leftReturn()  {
        self.navigationController!.popViewController(animated: true)
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
