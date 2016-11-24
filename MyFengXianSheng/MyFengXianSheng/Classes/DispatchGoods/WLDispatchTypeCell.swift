//
//  WLDispatchTypeCell.swift
//  MyFengXianSheng
//
//  Created by mac pro on 16/11/23.
//  Copyright © 2016年 mac pro. All rights reserved.
//

import UIKit

class WLDispatchTypeCell: UITableViewCell {

    @IBOutlet weak var iconImageV: UIImageView!
    @IBOutlet weak var titleLab: UILabel!
    @IBOutlet weak var priceLab: UILabel!
    @IBOutlet weak var descriptionLab: UILabel!
    @IBOutlet weak var bottomLin: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    public func drawLeftTopAndRightTop()  {
        let maskPath = UIBezierPath(roundedRect:self.bounds, byRoundingCorners:[.topLeft,.topRight], cornerRadii: CGSize.init(width: 10.0, height: 10.0))
        let maskLayer = CAShapeLayer()
        maskLayer.frame = self.bounds
        maskLayer.path = maskPath.cgPath
        self.layer.mask = maskLayer
        
        let layers:NSArray = self.layer.sublayers! as NSArray
        //判断对象类型
        if layers.lastObject is CAShapeLayer {
            (layers.lastObject as AnyObject).removeFromSuperlayer()
        }
    }
    
    public func drawLeftBottomAndRightBottom()  {
        let maskPath = UIBezierPath(roundedRect:self.bounds, byRoundingCorners:[.bottomLeft,.bottomRight], cornerRadii:  CGSize.init(width: 10.0, height: 10.0))
        let maskLayer = CAShapeLayer()
        maskLayer.frame = self.bounds
        maskLayer.path = maskPath.cgPath
        self.layer.mask = maskLayer
        
        let layers:NSArray = self.layer.sublayers! as NSArray
        //判断对象类型
        if layers.lastObject is CAShapeLayer {
            (layers.lastObject as AnyObject).removeFromSuperlayer()
        }
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
