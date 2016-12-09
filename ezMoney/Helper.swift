//
//  Helper.swift
//  ezMoney
//
//  Created by Ian Li on 12/6/16.
//  Copyright © 2016 Ian Li. All rights reserved.
//

import Foundation
import UIKit

class Helper {
    
    class func drawBottomLine(optionView:UIView)->UIView{
        let bottomBorder = CALayer()
        bottomBorder.frame = CGRect(x: 0, y: Int(optionView.frame.height-1), width: Int(optionView.frame.width), height: 1)
        bottomBorder.backgroundColor = UIColor(red:0.85, green:0.85, blue:0.85, alpha:1.0).cgColor
        optionView.layer.addSublayer(bottomBorder)
        
        return optionView;
    }
    
}
