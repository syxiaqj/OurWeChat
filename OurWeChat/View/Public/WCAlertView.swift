//
//  WCAlertView.swift
//  OurWeChat
//
//  Created by syxiaqj on 14/11/4.
//  Copyright (c) 2014年 renhe. All rights reserved.
//

import UIKit

protocol WCAlertViewDelegate {
    func wcAlertView(alertView: WCAlertView, clickedButtonAtIndex buttonIndex: Int)
}

class WCAlertView: UIView {
    
    //MARK: Pub Var
    var identifiter: String!
    
    private let btnArr = [UIButton]()
    
    init(buttons: String...) {
        super.init()
        var index = 0
        for item in buttons {
            let button = self.createNewButton()
            button.tag = index
            button.setTitle(item, forState: UIControlState.Normal)
            
        }
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Pri Method
    private func createNewButton() -> UIButton {
        let button = UIButton()
        
        button.addTarget(self, action: Selector("btnTi:"), forControlEvents: UIControlEvents.TouchUpInside)
//        button.setImage(<#image: UIImage?#>, forState: <#UIControlState#>)
        
        button.layer.cornerRadius = 5.0
        button.layer.borderColor = UIColor.grayColor().CGColor
        button.layer.borderWidth = 0.5
        button.layer.masksToBounds = true
        
        return button
    }
    

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
