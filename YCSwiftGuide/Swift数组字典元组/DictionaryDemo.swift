//
//  DictionaryDemo.swift
//  YCSwiftGuide
//
//  Created by ChangWingchit on 2017/8/24.
//  Copyright © 2017年 chit. All rights reserved.
//

import UIKit

class DictionaryDemo: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        testDictionary()
    }

    func testDictionary() -> Void {
        var dic = Dictionary<String, String>(); //创建空字典(key和value是任意类型，如:Int,Double,String等)
        var dic2 = ["key1":"swift", "key2":"xcode"]; //快速创建字典并初始化
        let dic3: Dictionary<Int, String> = [0:"hello", 1:"world"]; //创建指定类型的字典并初始化
        print(dic3)
        
        dic["v1"] = "value"; //向字典中追加键－值对
        print("the dic is \(dic)");
        
        print("the count of dic2 is \(dic2.count)"); //获取字典键－值对总个数
        print(dic2["key2"]!); //使用 ! 强制解析 打印字典值
        
        dic2["key1"] = "iOS"; //修改字典指定key对应的value, 若指定key不存在则作为新键－值对加入当前字典
        print(dic2)
        dic2.updateValue("Anroid", forKey: "key"); //修改字典指定key对应的value, 若指定key不存在则作为新键－值对加入当前字典
        print(dic2);
        
        dic2["key1"] = nil; //删除指定键－值对
        print(dic2)
        dic2.removeValue(forKey: "key"); //删除指定键－值对
        print(dic2);
        
        dic2 = [:]; //删除所有键－值对
        print(dic2);
        dic2.removeAll(keepingCapacity: true); //删除所有键－值对
        if dic2.isEmpty == true { //判断字典是否为空, 为空返回true, 不为空返回false
            print(dic2);
        }
        
        //遍历字典
        dic2 = ["key1":"IOS", "key2":"anroid"];
        for (key, value) in dic2
        {
            print(key, value);
        }
        
        //获取所有keys
        let keys = Array<String>(dic2.keys);
        print(keys);
        //获取所有values
        let values = Array<String>(dic2.values)
        print(values);
    }

}
