//
//  Foundation.swift
//  YCSwiftGuide
//
//  Created by ChangWingchit on 2017/8/23.
//  Copyright © 2017年 chit. All rights reserved.
//

import UIKit

class BasicDataTypes: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //常量
        let a = 100
        let b = 5.5
        let c = true
        let d = "hello,world"
        let e = "A"
        let f = ["swift","swift1","swift2","swift3"]
        let g = ["key1":"value1", "key2":"value2"]
        
        print(a)
        print(b)
        print(c)
        print(d)
        print(e)
        print(f)
        print(g)

        //定义指定类型常量
        let a2:Int = 100
        let b2:Double = 5.5
        let c2:Bool = true
        let d2:String = "hello,world"
        let e2:Character = "A"
        let f2:Array = ["swift","swift1","swift2","swift3"]
        let g2:Dictionary = ["key1":"value1", "key2":"value2"];
        
        print(a2);
        print(b2);
        print(c2);
        print(d2);
        print(e2);
        print(f2);
        print(g2);
        
        //变量
        var m = 10
        m = 20
        var n = "hello,swift"
        n = "hello,change"
        
        print(m);
        // \() 表示一个格式化符 类似于 %d %@
        print("这是个数字\(m)");
        
        print(n);
        print("这个字符串是\(n)")
        print("这个字符串是\(n)，下个字符串是\(m)")
        
        //定义指定类型变量
        var m2: Int = 10
        m2 = 20
        var n2: String = "hello, swift"
        n2 = "hello,hello"
        
        print(m2);
        print(n2);
        
        //定义可选类型变量
        var m3:Int? = 90
        m3 = 99
        //如果已知变量有值，可直接用 ! 进行强制解析可选; 这里如果不用 ! 打印出现Optional()
        print(m3!)
        var m4:String? = "hello,world again"
        m4 = "你好"
        print(m4!)
        
        logicalMethod()
    }
    
    func logicalMethod()->Void
    {
        //if语句
        var a = 10.0
        a = 20
        if (a <= 60)
        {
            //进行(+,-,*,/)运算时，参与运算的变量类型要匹配; 若不匹配，可以进行强制类型转换 var b = 0.8*Double(a)
            let b = 0.8*a
            print("\(b)成绩及格")
        }
        else{
            //swift没有了#define宏定义，可以用let常量替代
            let PI = 3.14
            print("\(PI*a)成绩不及格")
        }
        
        //switch语句
        var x = 60
        x = 80
        switch x {
        case 60:
            print("\(x)分成绩及格")
        case 80...90://可以用区间表示某段数字范围
            print("\(x)分成绩优异")
        case 100:
            print("满分\(x)")
        default:
            print("分数段不确定")
        }
        
        let light = "green"
        switch light
        {
        case "red":
            print("红灯亮，禁止过马路")
        case "green":
            print("绿灯亮，开始过马路")
            fallthrough//如果想穿透，使用穿透语句fallthrough，表示落下
        case "yellow":
            print("黄灯亮，快点过马路")
        //fallthrough;
        default:
            print("路灯异常了")
        }
        
        
        //while语句
        var i = 1;
        while i <= 5
        {
            print(i)
            //++i --i swift3移除
            i += 1
        }
        
        //do while语句 (Swift3换成repeat)
        i = 1;
        repeat{
            print(i);
            i += 1;
        }while i <= 5;
        
        //for语句
        //遍历相当于Python的迭代
        //C风格的for循环在Swift3中移除
//        for (var k = 1; k <= 5; k += 1)
//        {
//            print(k);
//            if k == 2 {
//                continue; //结束本次循环，转入下一次循环
//            }
//            
//            if k == 4 {
//                break; //直接跳出当前for循环
//            }
//        }
        
        //Swift3风格
        for k in 1...5 {
            print("打印的数字\(k)")
        }
        
        for i in 1..<10{
            print(i)
            // 打印结果为1-9
        }
        
        //反向遍历
        for i in (0...10).reversed(){
            print(i)  // 打印结果为10-0
        }
        
        //enumerated返回对象是一个元组，形式为（x，y）
        for (index, i) in (1...10).enumerated(){
            print(index)// 遍历索引
            print(i) // 遍历元素
        }
        
        //遍历数组
        let arr = ["1","2","3"]
        for str in arr {
            print("输出数字:\(str)")
        }
        
        //遍历字典
        let dict = ["name":"key name","name1":"key1 name","name2":"key 2 name"]
        for key in dict{
            print(key)
        }
        
        //输出结果为1-10之间的偶数 filte用于过滤数据
        for i in (1...10).filter({ $0 % 2 == 0}) {//swift闭包可以省略参数且用$0匿名，第二个参数则用$1，以此类推
            print(i)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
