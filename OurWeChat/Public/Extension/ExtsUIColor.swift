//
//  ExtsUIColor.swift
//  OurWeChat
//
//  Created by syxiaqj on 14/11/5.
//  Copyright (c) 2014年 renhe. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    convenience init(hex: Int) {
        
        var r: CGFloat = CGFloat((hex & 0xFF0000) >> 16) / 255.0
        var g: CGFloat = CGFloat((hex & 0xFF00) >> 8) / 255.0
        var b: CGFloat = CGFloat(hex & 0xFF) / 255.0
        
        self.init(red: r, green: g, blue: b, alpha: 1.0)
    }
    
    convenience init(r: Int, g: Int, b: Int) {
        self.init(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: 1.0)
    }
}