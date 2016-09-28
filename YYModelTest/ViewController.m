//
//  ViewController.m
//  YYModelTest
//
//  Created by HaKim on 16/9/27.
//  Copyright © 2016年 haKim. All rights reserved.
//

#import "ViewController.h"
#import "User.h"
#import <YYModel/YYModel.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self run];
}

- (void)run{
    [self test1];
}

- (void)test1{
    NSDictionary *dict = @{
                           @"uid":@123456,
                           @"name":@"Harry",
                           @"created":@"1965-07-31T00:00:00+0000"
                           };
    
    // Convert json to model:
    User *user = [User yy_modelWithJSON:dict];
    
    // Convert model to json:
    NSDictionary *json = [user yy_modelToJSONObject];
    
    NSLog(@"%@",user);
    NSLog(@"json = %@",json);
}

@end
