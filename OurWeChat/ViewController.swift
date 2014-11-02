//
//  ViewController.swift
//  OurWeChat
//
//  Created by xqj on 14/10/31.
//  Copyright (c) 2014年 renhe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: IBOutlet
    @IBOutlet var headImgv: UIImageView!
    @IBOutlet var pwdView: UIView!
    @IBOutlet var loginBtn: UIButton!
    @IBOutlet var registerBtn: UIButton!
    
    //MARK: Var
    
    //MARK: Let
    
    //MARK: Method - VC
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //设置状态栏颜色
        UIApplication.sharedApplication().statusBarStyle = UIStatusBarStyle.LightContent
        
        //这是头像的边框于阴影
        headImgv.layer.borderColor = UIColor.whiteColor().CGColor
        headImgv.layer.borderWidth = 2.0
        headImgv.layer.shadowColor = UIColor.blackColor().CGColor
        headImgv.layer.shadowRadius = 1.8
        headImgv.layer.shadowOffset = CGSizeMake(0, 1.8)
        headImgv.layer.shadowOpacity = 0.6
        
        //设置密码输入样式
        pwdView.layer.borderWidth = 1.0
        pwdView.layer.borderColor = UIColor.lightGrayColor().CGColor
        pwdView.layer.cornerRadius = 5.0
        pwdView.layer.masksToBounds = true
        
        //设置登录按钮样式
        loginBtn.layer.borderColor = UIColor.lightGrayColor().CGColor
        loginBtn.layer.borderWidth = 0.5
        loginBtn.layer.cornerRadius = 5.0
        loginBtn.layer.masksToBounds = true
        
        //注册按钮
        registerBtn.setBackgroundImage(self.image(UIColor.whiteColor()), forState: UIControlState.Normal)
        registerBtn.layer.borderWidth = 0.5
        registerBtn.layer.borderColor = UIColor.lightGrayColor().CGColor
        registerBtn.layer.cornerRadius = 5.0
        registerBtn.layer.masksToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        UIApplication.sharedApplication().keyWindow?.endEditing(true)
    }
    
    //MARK: IBAction
    @IBAction func loginBtnTi(sender: UIButton) {
        println("login")
    }
    
    @IBAction func registerBtnTi(sender: UIButton) {
        println("register")
    }
    
    @IBAction func chageActBtnTi(sender: UIButton) {
        println("chage account")
    }
    
    @IBAction func loginIssueBtnTi(sender: UIButton) {
        println("login issue")
    }
    
    
    //MARK: Method - Manual - Pub
    
    //MARK: Method - Manual - Sel
    
    //MARK: Method - Manual - Mgr
    
    //MARK: Method - Manual - Other
    func image(color: UIColor) -> UIImage? {
        var rect = CGRectMake(0, 0, 1, 1);
        UIGraphicsBeginImageContext(rect.size);
        let context = UIGraphicsGetCurrentContext();
        
        CGContextSetFillColorWithColor(context, color.CGColor);
        CGContextFillRect(context, rect);
        
        let image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        return image!;
    }
    
    //MARK: Delegate
    
    
}

