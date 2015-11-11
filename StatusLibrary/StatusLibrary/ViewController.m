//
//  ViewController.m
//  StatusLibrary
//
//  Created by Tsz on 15/11/9.

#import "ViewController.h"
#import "TSZTools.h"

@interface ViewController ()

@end
/*
 Undefined symbols for architecture i386 : 未定义的符号在i386架构
 现在的静态库在i386架构上面是不可以使用
 
 
 模拟器:
 iPhone4s-->iPhone5 : i386
 iPhone5s-->iPhone6plus : x86_64
 
 真机:
 iPhone3gs-->iPhone4s : armv7
 iPhone5-->iPhone5c : armv7s
 iPhone5s-->iPhone6plus : arm64
 
 
 通过下列命令查看静态库支持哪些架构:
 lipo -info 静态库.a
 
 通过下列命令可以将静态库进行合并:
 lipo -create 静态库1.a 静态库2.a -output 新静态库的名称.a
 
 2014年10月更新的xcode版本中, 不支持默认输出armv7s这个架构
 
 Debug 和 Release 区别
 Debug--> 调试状态 --> 有丰富的调试代码
 
 Release --> 发布状态 --> 去除调试代码, 达到优化的目的 (NSLog不会出现)
 Release版本, 系统在打包时也会做一点优化, 体积变小, 执行速度更快(没有明显的感觉)
 
 Release在打包静态库时, 只编译当前架构的选项默认是NO, 也就是会直接生成多架构的版本(真机/模拟器各执行一次即可)
 
 为了避免类库中的图片资源跟其他项目文件重名, 需要进行添加bundle目录的处理
 */


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%zd" , [TSZTools subNumber1:10 andNumber2:2]);
}

@end
