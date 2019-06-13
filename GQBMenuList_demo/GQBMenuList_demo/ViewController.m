//
//  ViewController.m
//  GQBMenuList_demo
//
//  Created by xiaobao on 2019/6/13.
//  Copyright © 2019 122. All rights reserved.
//

#import "ViewController.h"
#import "TestViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    TestViewController *vc = [TestViewController new];
    [self presentViewController:vc animated:YES completion:nil];
}

@end
