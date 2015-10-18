//
//  ViewController.m
//  FGGSwitchDemo
//
//  Created by 风过的夏 on 15/10/18.
//  Copyright (c) 2015年 风过的夏. All rights reserved.
//

#import "ViewController.h"
#import "FGGSwitch.h"

@interface ViewController ()
{
    FGGSwitch *_fggSwitch;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    [self createSwitch];
    [self createTip];
}
/**
 *  创建一个FGGSwitch对象
 */
-(void)createSwitch
{
    _fggSwitch=[[FGGSwitch alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2-50, 100, 100,50)
                                                 onColor:[UIColor blueColor]
                                                offColor:[UIColor lightGrayColor]
                                              thumbColor:[UIColor colorWithRed:239/255.f green:239/255.f blue:239/255.f alpha:1.f]];
    
    [_fggSwitch addTarget:self forSwitchValueDidChangedAction:@selector(switchValueChanged)];
    
    [self.view addSubview:_fggSwitch];
}
/**
 *  点击fggSwitch时调用的方法
 */
-(void)switchValueChanged
{
    if(_fggSwitch.isOn)
    {
        NSLog(@"开关打开了");
    }
    else
    {
        NSLog(@"开关关闭了");
    }
}
/**
 *  提示Label
 */
-(void)createTip
{
    UILabel *tipLb=[[UILabel alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2-100, 200, 200, 120)];
    tipLb.textColor=[UIColor redColor];
    tipLb.numberOfLines=0;
    tipLb.font=[UIFont systemFontOfSize:16];
    NSString *tip=@"FGGSwitch虽然看起来和UISwitch差不多，但嘴本质的区别是：FGGSwitch可以随意改变大小，而UISwtich则不能改变大小(其大小固定为53x31)！";
    tipLb.text=tip;
    [self.view addSubview:tipLb];
}
@end
