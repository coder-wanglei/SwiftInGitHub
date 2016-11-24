//
//  WLSendViewController.swift
//  MyFengXianSheng
//
//  Created by mac pro on 16/11/23.
//  Copyright © 2016年 mac pro. All rights reserved.
//

import UIKit

class WLSendViewController: BaseViewController {

    var defaultInfo = [[String:String]]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initUI()
        
    }
    func initUI()  {
        self.title = "填写发件人信息"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.init(image: UIImage.init(named: "redBack"), style: UIBarButtonItemStyle.plain, target: self, action: #selector(leftReturn))
        self.navigationItem.leftBarButtonItem?.tintColor = UIColor.red
        self.navigationItem.hidesBackButton = true
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(title: "添加", style: UIBarButtonItemStyle.plain, target: self, action: #selector(addAddress))
        self.navigationItem.rightBarButtonItem?.tintColor = UIColor.red
        
        defaultInfo = [
            ["title":"发  件  人:","placeholder":"姓名"],
            ["title":"联系电话:","placeholder":"手机号"],
            ["title":"发件地址:","placeholder":"小区/写字楼/学校等"],
            ["title":"详细地址:","placeholder":"门牌号码等"]]
        
        self.initTable()
        self.table.register(UINib.init(nibName: "WLSendFillOutInfoCell", bundle: nil), forCellReuseIdentifier: "WLSendFillOutInfoCell")
    }
    
    
    
    func leftReturn()  {
        self.navigationController!.popViewController(animated: true)
    }
    func addAddress()  {
        self.navigationController!.popViewController(animated: true)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.defaultInfo.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:WLSendFillOutInfoCell = tableView.dequeueReusableCell(withIdentifier: "WLSendFillOutInfoCell", for: indexPath) as! WLSendFillOutInfoCell
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        let infoDic:NSDictionary = defaultInfo[indexPath.row] as NSDictionary
        
        cell.titleLab.text = (infoDic["title"] as! String)
        cell.infoTextField.placeholder = infoDic["placeholder"] as? String
        cell.rightImageV.isHidden = true
        if indexPath.row == 2 {
            cell.rightImageV.isHidden = false
            cell.infoTextField.isUserInteractionEnabled = false
        }
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 2{
            print("选择发件地址")
            let vc = WLBaiduMapViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
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
