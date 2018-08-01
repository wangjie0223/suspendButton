//
//  ViewController.m
//  suspendButton
//
//  Created by wanglei on 17/1/5.
//  Copyright © 2017年 wanglei. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+ZYSuspensionView.h"

@interface ViewController ()<ZYSuspensionViewDelegate>
@property (nonatomic,strong)ZYSuspensionView *sus2;
@end

@implementation ViewController


- (void)touch{
    
    NSLog(@"KKKKK");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIButton * backBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    backBtn.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:backBtn];
    [backBtn addTarget:self action:@selector(touch) forControlEvents:UIControlEventTouchUpInside];
    
    
    

    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(show)];
    self.view.backgroundColor = [UIColor whiteColor];
    self.view.frame = [UIScreen mainScreen].bounds;
    [self suspensionViewExample];
    [self show];
}


- (void)show{
    self.sus2.frame = CGRectMake(self.view.frame.size.width - 200, self.view.frame.size.height - 200 , 100, 100);

    [self.sus2 show];
}


- (void)suspensionViewExample
{
    // 仅仅创建一个悬浮球，自行实现点击的代理方法
    
    UIColor *color = [UIColor colorWithRed:0.50f green:0.89f blue:0.31f alpha:1.00f];
    
    self.sus2 = [[ZYSuspensionView alloc] initWithFrame:CGRectMake(0, 0, 0, 0)
                                                               color:color
                                                delegate:self];
    self.sus2.leanType = ZYSuspensionViewLeanTypeHorizontal;
    [self.sus2 setTitle:@"测试2" forState:UIControlStateNormal];
//    [self.sus2 show];
}



#pragma mark - ZYSuspensionViewDelegate
- (void)suspensionViewClick:(ZYSuspensionView *)suspensionView
{
    NSLog(@"click %@",suspensionView.titleLabel.text);
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
