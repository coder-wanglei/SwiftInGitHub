//
//  WLDispatchAddressCell.swift
//  MyFengXianSheng
//
//  Created by mac pro on 16/11/23.
//  Copyright © 2016年 mac pro. All rights reserved.
//

import UIKit

class WLDispatchAddressCell: UITableViewCell {

    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }
    public func drawAll() {
        let maskPath = UIBezierPath(roundedRect:self.bounds, byRoundingCorners:UIRectCorner.allCorners, cornerRadii:  CGSize.init(width: 10.0, height: 10.0))
        let maskLayer = CAShapeLayer()
        maskLayer.frame = self.bounds
        maskLayer.path = maskPath.cgPath
        self.layer.mask = maskLayer

    }
  
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
























