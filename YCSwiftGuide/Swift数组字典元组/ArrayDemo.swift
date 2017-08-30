
//
//  ArrayDemo.swift
//  YCSwiftGuide
//
//  Created by ChangWingchit on 2017/8/24.
//  Copyright © 2017年 chit. All rights reserved.
//

import UIKit

class ArrayDemo: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        testArray()
        
    }

    func testArray() -> Void {
        //数组的创建
        let arr1 = Array<Any>()
        var arr2 = Array<Int>()
        var arr2_1 = Array<String>()
        //默认string let arr3 = ["","",""]
        let arr3 = ["hello","","",10] as [Any]
        let arr4 = Array<String>(["hello","world"])
        let ary5:Array<Double> = [2.1, 3.5, 1];
        print(arr1,arr2,arr3,arr4,ary5)
        
        //遍历数组
        for str in arr4 {//快速遍历
            print(str);
        }
        
        for num in (1...arr3.count) {
            print(num)
        }
        
        //创建一个指定类型数组，每个数组元素又都是数组且数组里的元素是字符串
        let arr6:Array<Array<String>> = [["swift1", "xcode1"], ["swift2", "xcode2"], ["swift3", "xcode3"]];
        //遍历数组内容
        for ary in arr6 {
            for str in ary {
                print(str);
            }
        }
        
        //isEmpty属性，若数组为空返回true, 非空返回false
        if arr2.isEmpty {
            print("the array is empty");
        } else {
            print("\(arr2) is not empty");
        }
        
        //在数组添加元素
        arr2.append(10)
        print(arr2)
        
        //插入元素
        arr2.insert(20, at: 1)
        print(arr2)
        
        //拼接两个数组 (只能拼接相同类型)
        arr2_1 += ["ios","anroid"];
        print(arr2);
        
        //获取数组指定所引对应的数组元素
        let str = arr2[0];
        print(str);
        
        //修改数组中指定所引对应的数组元素
        arr2[0] = 80;
        print(arr2);
        
        //替换数组指定区间的内容
        arr2_1[2...arr2_1.count-1] = ["12", "yida", "互联"];
        print(arr2_1);
        
        //删除指定所引对应的元素
        arr2.remove(at: 0);
        print(arr2);
        
        //删除指定范围对应的元素
        arr2.removeSubrange((0 ..< 2)); //但不包括索引2
        print(arr2);
        
        //删除最后一个元素
        arr2.removeLast();
        print(arr2);
        
        //删除所有元素
        arr2.removeAll(keepingCapacity:true);//true表示删除后保留空间，false表示不保留
        print("the array is \(arr2)");
        
        //添加元素并遍历 索引 和 值
        //enumerated返回对象是一个元组，形式为（x，y）
        for (index, i) in arr2.enumerated(){
            print(index)// 遍历索引
            print(i) // 遍历元素
        }
        
        //数组排序
        arr2.sort()
        print(arr2)

        let newArr2 = arr2.sorted { (n1:Int, n2:Int) -> Bool in
            return n2>n1
        }
        print(newArr2)
        
        
        //使用了闭包的排序
        let numbers = [12,25,1,35,27]
        let numbersSorted = numbers.sorted(){$1 > $0}
        print(numbersSorted)
        
    }
    
    //从小到大排序(自定义的函数)
    func customSort(_ str1:String, str2:String) ->Bool
    {
        //字符串 是 字母字符串
        if str1 < str2  //若从大到小，只需用 >
        {
            return true;
        }
        return false;
        
        //字符串 为 数字字符串
        //    let num1 = (str1 as NSString).intValue;
        //    let num2 = (str2 as NSString).intValue;
        //    if num1 < num2 {
        //        return true;
        //    }
        //    return false;
    }
    
    
}
