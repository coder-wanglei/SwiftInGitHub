//
//  DispatchGoodsViewController.swift
//  MyFengXianSheng
//
//  Created by mac pro on 16/11/23.
//  Copyright © 2016年 mac pro. All rights reserved.
//

import UIKit

class DispatchGoodsViewController: BaseViewController{
    //字典数组
    var typeInfoDicArray = [[String:String]]()
    
    let bgColor = UIColor.init(red: 236.0/255.0, green: 236.0/255.0, blue: 236.0/255.0, alpha: 1.0)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //设置LaunchImage延迟时间  2.0s
//        Thread.sleep(forTimeInterval: 2.0)
        
        self.initUI()
        typeInfoDicArray = [
            ["iconName":"short_server","title":"四小时即时达","price":"￥5 起","description":"4km内批量快速送达，适用于蛋糕、外卖、餐饮等产品配送。"],
            ["iconName":"whole_city_can","title":"同城单日达","price":"￥8 起","description":"全城不限距离当日送达，最低只要8元；适用于水果、生鲜、鲜花、汽配、3C等。"],
            ["iconName":"special_car","title":"专车2小时达","price":"￥16 起","description":"点对点专车直送，适用于临时配送需求或时效要求高的产品。"],
            ["iconName":"big_customer_gray","title":"里程包车送","price":"￥50/车","description":"客制化专线配送，可根据您的需求制定配送路线；适用于大批量多点配送。"],
            ["iconName":"chartered_gray","title":"时段包车送","price":"￥200/1车/1天","description":"预约用车配送，按时段包车，每辆车最低租费200元起。"]]

    }
    
    func initUI()  {
        self.view.backgroundColor = bgColor
        //自定义标题视图
        let bgImageView = UIImageView.init(frame: CGRect.init(x: 0, y: 0, width: 90, height: 24))
        bgImageView.image = UIImage.init(named: "mrwind")
        self.navigationItem.titleView = bgImageView
        
        self.table = UITableView.init(frame: CGRect.init(x: 10, y: 0, width: SCREEN_WIDTH-20, height: SCREEN_HEIGHT-46),style:UITableViewStyle.plain)
        
        self.table.delegate = self
        self.table.dataSource = self
        self.table.tableFooterView = UIView.init(frame: CGRect.zero)
        self.table.backgroundColor = bgColor
        //table分割线
        self.table.separatorStyle = UITableViewCellSeparatorStyle.none
        self.table.register(UINib.init(nibName: "WLDispatchAddressCell", bundle: nil), forCellReuseIdentifier: "WLDispatchAddressCell")
        self.table.register(UINib.init(nibName: "WLDispatchTypeCell", bundle: nil), forCellReuseIdentifier: "WLDispatchTypeCell")
        self.view.addSubview(table)
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }else{
            return 5
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        if indexPath.section == 0 {
            let cell:WLDispatchAddressCell = tableView.dequeueReusableCell(withIdentifier: "WLDispatchAddressCell", for: indexPath) as! WLDispatchAddressCell
            cell.drawAll()
            cell.selectionStyle = UITableViewCellSelectionStyle.none
            return cell
        }else{
            let cell:WLDispatchTypeCell = tableView.dequeueReusableCell(withIdentifier: "WLDispatchTypeCell", for: indexPath) as! WLDispatchTypeCell
            let infoDic:NSDictionary = typeInfoDicArray[indexPath.row] as NSDictionary
            
            cell.iconImageV.image = UIImage.init(named: infoDic["iconName"] as! String)
            cell.titleLab.text = infoDic["title"] as? String
            cell.priceLab.text = infoDic["price"] as? String
            cell.descriptionLab.text = infoDic["description"] as? String
            if indexPath.row == 0{
                cell.drawLeftTopAndRightTop()
            }
            if indexPath.row == 4{
                cell.drawLeftBottomAndRightBottom()
                cell.bottomLin.isHidden = true
            }
            cell.selectionStyle = UITableViewCellSelectionStyle.none
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView.init(frame: CGRect.init(x: 0, y: 0, width: self.table.frame.size.width, height: 10))
        view.backgroundColor = bgColor
        return view
    }
    
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 60
        }else{
            return 80
        }
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let vc = WLSendViewController()
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
