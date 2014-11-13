//
//  RegisterVC.swift
//  OurWeChat
//
//  Created by syxiaqj on 14/11/7.
//  Copyright (c) 2014年 renhe. All rights reserved.
//

import UIKit

class RegisterVC: UIViewController {

    //MARK: IBOutlet
    
    //MARK: Var
    
    //MARK: Let
    
    //MARK: Method - VC
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Method - Manual - Pub
    
    //MARK: Method - Manual - Sel
    
    @IBAction func backTtnTi(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil);
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
