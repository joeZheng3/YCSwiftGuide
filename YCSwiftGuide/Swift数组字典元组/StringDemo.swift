//
//  StringDemo.swift
//  YCSwiftGuide
//
//  Created by ChangWingchit on 2017/8/24.
//  Copyright © 2017年 chit. All rights reserved.
//

import UIKit

class StringDemo: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        testString()
        
    }
   
    func testString() -> Void {
        let str = "hello,world"
        
        print(str)
        print("\(str)")
        NSLog("%@", str)
        NSLog("\(str)")
        
        //创建可选字符串，不赋值时为nil
        let str2:String? = "hello,swift"
        print(str2!)
        
        //创建空的字符串
        let str3 = String()
        if str3.isEmpty {
            print("str3为空");
        }
        
        //快速创建字符串
        let str4 = String("hello,swift2")
        print(str4!)
        
        //字符串的追加
        let str5 = str4! + "hahahaha"
        print(str5)
        
        //字符串的应用
        
        //判断在字符串中包含某个字符
        let str6 = "SwiftVeryIntersting"
        if let index3 = str6.characters.index(of: "V"){
            print(index3)//5
        }
        
        //判断在字符串中包含某个子字符串
        if let range = str6.range(of: "Inter") {
            print(range)
        }
        
        //是否含有前缀
        let boolValue = str6.hasPrefix("Swift")
        print(boolValue)
        //是否含有后缀
        let boolValue2 = str6.hasSuffix("string")
        print(boolValue2)
        
        
        //遍历字符串
        let words = "abc"
        print(words.characters.count)
        
        for word in words.characters {
            print(word)
        }
        
        words.characters.forEach{print($0)}
        
        for (key,value) in words.characters.enumerated() {
            print("\(key) \(value)")
        }
    }
    
    func testString2() -> Void {
        //拼接／添加字符串
        let str1 = "你好，"
        let str2 = "明天"
        let char1:Character = "！"
        
        var p_str1 = str1+str2  //"你好，明天"
        p_str1 = String(format:"%@~%@",str1,str2)  //"你好，~明天"
        p_str1 = String(format:"%@~%@-%d",str1,str2,456)   //"你好，~明天-456"
        
        //这种拼接方式方便地组合多种类型
        p_str1 = "123\(str1)\(str2)456" //"123你好，明天456"
        //在后面添加字符／字符串
        p_str1.append(char1)
        //+=：用于在后面添加同类型的
        p_str1 += str2
        print(p_str1)
        
        //字符串追加
        let str3 = "0.0"
        var str4 = "QAQ"
        var str5 = String()
        str5 = str4.appendingFormat("%@+",str3)
        print(str5)
        
        //字符串大小写
        let str6 = "hello, swift";
        print(str6.uppercased()); //全部大写
        print(str6.lowercased()); //全部小写
        print("\(str6.capitalized)"); //首字母大写
        
        //字符串内容是否相等
        let str7 = "hello";
        let str8 = "hello";
        if str7 == str8 //这里比较的是内容，这点与oc不同(oc比较的是地址)
        {
            print("\(str7) 等于 \(str8)");
        }
        
        //字符串比较大小
        if str7 > str8 {
            print("\(str7) 大于 \(str8)");
        } else if str7 < str8 {
            print("\(str7) 小于 \(str8)");
        } else {
            print("\(str7) 和 \(str8) 相等")
        }
        
        //字符串(前缀，后缀)
        let str9 = "hello, swift"
        if str9.hasPrefix("hello") {
            print("\(str9) contain \"hello\"");
        }
        if str9.hasSuffix("ft") {
            print("\(str9) contain \"ft\"");
        }
        
        //计算字符串长度
        let str16 = "hello,swift";
        print("the length of \(str16) is \(str16.lengthOfBytes(using: String.Encoding.utf8))");
        
        //字符串转成数组
        let str17 = "hello,swift";
        var ary = str17.components(separatedBy: ",");
        print("\(ary[0])\n\(ary[1])")
        
        //字符串转换成基本数据类型
        let str18 = "123";
        let num = (str18 as NSString).intValue;
        print(num)
        
        //字符串替换
        var str19 = "hello, world and world";
        let newStr = str19.replacingOccurrences(of: "world", with: "swift", options:  NSString.CompareOptions.caseInsensitive, range: nil)
        print(newStr);
        
        //清除字符串
        str19.removeAll(keepingCapacity: false); // false表示：清空所有并释放内存，true表示不释放内存
        print(str19);
        
        str19 = str19 + "宜达互联" // 添加字符串
        print(str19);
    }
    
    
    
    
}
