

//
//  TuplesDemo.swift
//  YCSwiftGuide
//
//  Created by ChangWingchit on 2017/8/24.
//  Copyright © 2017年 chit. All rights reserved.
//

import UIKit

class TuplesDemo: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        testTuples()
    }

    func testTuples() -> Void {
        //元组创建
        let http404Error = (404, "Not Found");
        print(http404Error);
        print(http404Error.0, http404Error.1);
        
        //用一个元组初始化另一个元组
        let (statusCode, statusMessage) = http404Error;
        print(statusCode, statusMessage);
        print("the statusCode is \(statusCode), statusMessage is \(statusMessage)");
        
        //创建带 标签 的元组
        let httpError = (code:200, msg:"Successful");
        print(httpError.code, httpError.msg);
        
        //若不需要元组名时，可以 _ 替代
        let (_, msg) = (400, "Not Exist");
        print("the status Message is \(msg)");
    }
    
}
