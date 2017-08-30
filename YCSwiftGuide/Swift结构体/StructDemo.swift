//
//  StructDemo.swift
//  YCSwiftGuide
//
//  Created by ChangWingchit on 2017/8/24.
//  Copyright © 2017年 chit. All rights reserved.
//

import UIKit

//定义一个结构体
struct Student {
    var name = "";  //姓名
    var age = 0;    //年龄
    var number = 0; //学号
}

//定义一个带有 构造函数 的结构体
struct Student2 {
    var name = "";  //姓名
    var age = 0;    //年龄
    var number = 0; //学号
    
    //无参数的构造函数(初始化函数), 注意：构造函数不用写 func 和 返回值
    init(){
        print("无参构造函数");
    }
    
    //有参数的构造函数(初始化函数), 注意：构造函数不用写 func 和 返回值
    init(name:String, age:Int, number:Int){
        print("有参数的构造函数");
        self.name = name;
        self.age = age;
        self.number = number;
    }
    
    //这里注意：结构体没有析构函数(释放函数dealloc)
}

//定义一个带有 构造函数 和 普通函数 的结构体
struct Student3 {
    var name = "";  //姓名
    var age = 0;    //年龄
    var number = 0; //学号
    
    //无参数的构造函数, 注意：构造函数不用写 func 和 返回值
    init(){
        print("无参构造函数");
    }
    
    //有参数的构造函数, 注意：构造函数不用写 func 和 返回值
    init(name:String, age:Int, number:Int){
        print("有参数的构造函数");
        self.name = name;
        self.age = age;
        self.number = number;
    }
    
    //这里注意：结构体没有析构函数!!
    
    
    //以下是普通函数，注意：普通函数必须写 func 和 返回值
    
    //获取姓名
    func getName() ->String {
        return self.name;
    }
    
    //设置姓名 (注意：结构体变量只能在构造函数中修改，若在普通函数中修改，必须加 mutating 修饰，其中文意思是 "改变")
    mutating func setName(_ name:String){
        self.name = name;
    }
    
    //设置姓名，年龄，学号
    mutating func setInfo(_ name:String, age:Int, number:Int){
        self.name = name;
        self.age = age;
        self.number = number;
    }
}


class StructDemo: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        testStruct()
        testStruct2()
        testStruct3()
    }
    
    func testStruct() -> Void {
         //创建结构体方式一
        var student = Student()
        student.name = "张三";
        student.age = 25;
        student.number = 1001;
        print("\(student.name), \(student.age), \(student.number)");
        
        //创建结构体方式二
        let student2 = Student(name: "李四", age: 28, number: 1002);
        print("\(student2.name), \(student2.age), \(student2.number)");
    }
    
    func testStruct2() -> Void {
        //创建结构体方式一
        var student = Student2(); //会自动调用init()构造函数
        student.name = "张三";
        student.age = 25;
        student.number = 1001;
        print("\(student.name), \(student.age), \(student.number)");
        
        //创建结构体方式二
        let student2 = Student2(name: "李四", age: 28, number: 1002); //会自动调用init(name:, age:, number:)构造函数
        print("\(student2.name), \(student2.age), \(student2.number)");

    }
    
    func testStruct3() -> Void {
        //创建结构体方式一
        var student = Student3(); //会自动调用init()构造函数
        student.name = "张三";
        student.age = 25;
        student.number = 1001;
        print("\(student.name), \(student.age), \(student.number)");
        
        //创建结构体方式二
        var student2 = Student3(name: "李四", age: 28, number: 1002); //会自动调用init(name:,age:,number:)构造函数
        print("\(student2.name), \(student2.age), \(student2.number)");
        
        let name = student2.getName(); //获取姓名
        print(name);
        
        student2.setName("王五"); //设置姓名
        print("\(student2.name)");
        
        //注意：调用结构体普通函数时，若函数有多个参数，从第二个参数开始，要显示参数名！！
        student2.setInfo("赵六", age: 30, number: 2015); //设置姓名，年龄，学号
        print("\(student2.name), \(student2.age), \(student2.number)");
    }


}
