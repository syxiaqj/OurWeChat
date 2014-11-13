//
//  ExtsUIImage.swift
//  OurWeChat
//
//  Created by syxiaqj on 14/11/4.
//  Copyright (c) 2014年 renhe. All rights reserved.
//

import Foundation
import UIKit

extension UIImage {
    convenience init?(color: UIColor) {
//        var rect = CGRectMake(0, 0, 1, 1);
//        UIGraphicsBeginImageContext(rect.size);
//        let context = UIGraphicsGetCurrentContext();
//        
//        CGContextSetFillColorWithColor(context, color.CGColor);
//        CGContextFillRect(context, rect);
//        
//        let image = UIGraphicsGetImageFromCurrentImageContext();
//        UIGraphicsEndImageContext();
//        
//        self.init(CGImage: image.CGImage);
        
        self.init(color: color, size: CGSizeMake(1, 1))
    }
    
    convenience init?(color: UIColor, size: CGSize) {
        var rect = CGRectMake(0, 0, size.width, size.height);
        UIGraphicsBeginImageContext(rect.size);
        let context = UIGraphicsGetCurrentContext();
        
        CGContextSetFillColorWithColor(context, color.CGColor);
        CGContextFillRect(context, rect);
        
        let image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        
        self.init(CGImage: image.CGImage);
    }
}