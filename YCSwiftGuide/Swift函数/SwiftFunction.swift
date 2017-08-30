//
//  SwiftFunction.swift
//  YCSwiftGuide
//
//  Created by ChangWingchit on 2017/8/23.
//  Copyright © 2017年 chit. All rights reserved.
//

import UIKit

class SwiftFunction: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //函数的调用
        
        //函数1
        test()
        //函数2
        let count = plus(m: 10, n: 10)
        print("\(count)")
        //函数3
        let str:String = test2(name: "路线", from: "深圳", to: "北京")
        print(str);
        //函数4
        let (p1,p2,p3) = test3()
        print("\(p1),\(p2),\(p3)")
        //函数5
        let count2 = test4(m: 10, n: 20)
        print(count2)
        //函数6
        let funcPointer = test5();//接收函数指针(即函数名stringConnect)
        let info = funcPointer("hello", "world");//调用函数指针(即函数名stringConnect)
        print(info)
        //函数7
        let s = [10,123,12,312]
        test6(ary: s, zc: zhengChu)
        
        //断言assert，作用：当给定条件不满足时给出提示，并终止程序运行
        let age = -5;
        assert(age >= 0); //有条件，无提示
        assert(age >= 0, "人的年龄不能小于0!"); //有条件，有提示
        assertionFailure("条件不满足，程序中止!"); //无条件，有提示
        
    }

    //定义一个：无返回值，无参数 的函数
    func test() ->Void
    {
        print("函数1");
    }
    
    //定义一个：返回值为Int, 包含2参数且类型为Int 的函数
    //plus(_ m:Int,n:Int) _是为了兼容以前的，苹果推出一种方式来解决 以前可以直接plus(10,n:10)
    func plus(m:Int,n:Int) -> Int {
        let k = m+n
        return k
    }
    
    //定义一个：返回值为String, 包含3个参数且类型为String，有标签 的函数
    func test2(name v:String,from v2:String,to v3:String ) -> String {
        return "\(v)：\(v2) -> \(v3)"
    }
    
    //定义一个：返回值为元组(String, Int, Bool)，参数为空 的函数
    func test3() -> (String,Int,Bool) {
        return ("hello,world",10,true)
    }
    
    //函数内部嵌套定义函数(类似block)
    func test4(m:Int, n:Int) ->Int
    {
        //定义一个 求和 函数
        func add(num1:Int, num2:Int) ->Int
        {
            return (num1+num2);
        }
        
        return add(num1: m, num2: n);//函数内调用 求和 函数
    }
    
    //定义一个：返回值为函数指针(地址)，参数为空 的函数
    func test5() -> (String,String) ->String {
        func stringConnect(str1:String, str2:String) ->String
        {
            return ("\(str1)\(str2)");
        }
        return stringConnect;
    }
    
    //定义一个：返回值为空，参数：参数1为数组类型，参数2为函数指针类型 的函数
    //问题：求数组[43, 12, 45, 6, 21, 80]中能被3整除的数组元素
    func test6(ary:Array<Int>, zc:(Int) ->Bool)
    {
        for num in ary
        {
            if zc(num) //zhengChu(num)
            {
                print(num);
            }
        }
    }
    
    //功能：判断数字是否能被3整除
    func zhengChu(_ num:Int) ->Bool
    {
        if num%3 == 0
        {
            return true;
        }
        return false;
    }

}
