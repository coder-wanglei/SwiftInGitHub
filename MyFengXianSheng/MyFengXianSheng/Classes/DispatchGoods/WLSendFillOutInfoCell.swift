//
//  WLSendFillOutInfoCell.swift
//  MyFengXianSheng
//
//  Created by mac pro on 16/11/23.
//  Copyright © 2016年 mac pro. All rights reserved.
//

import UIKit

class WLSendFillOutInfoCell: UITableViewCell,UITextFieldDelegate {

    @IBOutlet weak var rightImageV: UIImageView!
    @IBOutlet weak var infoTextField: UITextField!
    @IBOutlet weak var titleLab: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        let tap:UIGestureRecognizer = UITapGestureRecognizer.init(target: self, action: #selector(tapRightImageView))
        self.rightImageV.isUserInteractionEnabled = true
        self.rightImageV.addGestureRecognizer(tap)
        
        self.infoTextField.delegate = self
    }
//    ["title":"发  件  人:","placeholder":"姓名"],
//    ["title":"联系电话:","placeholder":"手机号"],
//    ["title":"发件地址:","placeholder":"小区/写字楼/学校等"],
//    ["title":"详细地址:","placeholder":"门牌号码等"]]
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.rightImageV.image = UIImage.init(named: "loginInput_close")
        self.rightImageV.isHidden = false

    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.rightImageV.isHidden = true
        self.infoTextField.resignFirstResponder()
    }
    func tapRightImageView() {
        self.infoTextField.text = ""
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
