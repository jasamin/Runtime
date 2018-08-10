//
//  ViewController.m
//  Runtime
//
//  Created by Hanrun on 2018/8/9.
//  Copyright © 2018年 Hanrun. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>
#import <objc/message.h>

#import "Person.h"
#import "PersonModel.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //正常oc代码创建类和调用方法
    //Person *vc = [[Person alloc]init];
    //[vc eat];
    
    //使用runtime机制创建和调用
    Person *vc ;//= [Person alloc];
    //vc = [vc init];
    vc = objc_msgSend(objc_getClass("Person"), sel_registerName("alloc"));
    vc = objc_msgSend(vc, sel_registerName("init"));
    objc_msgSend(vc, sel_registerName("eat"));
    
}

- (IBAction)save:(id)sender {
    PersonModel *model = [[PersonModel alloc]init];
    model.name = @"Cavin";
    model.age = 99;
    
    NSString *temPath = NSTemporaryDirectory();
    temPath = [temPath stringByAppendingPathComponent:@"person.txt"];
    NSLog(@"temPath = %@",temPath);
    [NSKeyedArchiver archiveRootObject:model toFile:temPath];
}

- (IBAction)read:(id)sender {
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
