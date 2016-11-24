//
//  BaseViewController.swift
//  MyFengXianSheng
//
//  Created by mac pro on 16/11/23.
//  Copyright © 2016年 mac pro. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    public let SCREEN_WIDTH = UIScreen.main.bounds.size.width
    public let SCREEN_HEIGHT = UIScreen.main.bounds.size.height
    public var table = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.barTintColor = UIColor.white
    }

    public func initTable(){
        self.table = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: SCREEN_WIDTH, height: SCREEN_HEIGHT-46),style:UITableViewStyle.plain)
        
        self.table.delegate = self
        self.table.dataSource = self
        self.table.tableHeaderView = UIView.init(frame: CGRect.zero)
        self.table.tableFooterView = UIView.init(frame: CGRect.zero)
        self.table.backgroundColor = UIColor.init(red: 236.0/255.0, green: 236.0/255.0, blue: 236.0/255.0, alpha: 1.0)
        self.table.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: "cell")
        self.view.addSubview(table)
        
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        cell.textLabel?.text = "cell  test"
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
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
