//
//  FGGSwitch.h
//  FGGSwitch
//
//  Created by 风过的夏 on 15/10/18.
//  Copyright (c) 2015年 夏桂峰. All rights reserved.
//
/*
 FGGSwitch 简介
 ------------------------------------------------------------------------
 一、前言：
->FGGSwtich是UIView的子类，目的是为了实现随意改变Switch的大小。
->由于系统自带的UISwitch的frame固定为53x31无法修改，因此自定义一个Switch。
->FGGSwitch虽然看起来和UISwitch差不多，但嘴本质的区别是：FGGSwitch可以随意改变大小，而UISwtich则不能改变大小(其大小固定为53x31)！
->FGGSwitch——可以改变大小的UISwitch
 
 二、用法：
 @required
 
 1.导入FGGSwitch.h文件
 2.用initWithFrame:(CGRect)frame onColor:(UIColor *)onColor offColor:(UIColor *)offColor thumbColor:(UIColor *)thumbColor方法创建一个FGGSwitch对象，并添加到父视图。
 
 @optinal
 
 3.你可以调用addTarget:(id)target ForSwitchValueDidChangedAction:(SEL)action方法为FGGSwitch对象添加开关状态改变时调用的方法。
 ------------------------------------------------------------------------
 可能会更新，请参考gitHub代码地址：https://github.com/Insfgg99x/FGGSwtich.git 请多多支持！
 */

#import <UIKit/UIKit.h>

/**
 *  系统自带的UISwitch大小固定为53x31无法修改，因此自定义一个Switch
 */
@interface FGGSwitch : UIView
/**
 *  开关打开时的颜色
 */
@property(nonatomic,strong)UIColor *onColor;
/**
 *  开关关闭时的颜色
 */
@property(nonatomic,strong)UIColor *offColor;
/**
 *  转换关闭开启状态的按钮的颜色
 */
@property(nonatomic,strong)UIColor *thumbColor;
/**
 *  开关的打开/关闭状态
 */
@property(nonatomic,assign,getter=isOn)BOOL on;

/**
 *  初始化方法
 *
 *  @param frame      frame
 *  @param onColor    开关打开时的颜色
 *  @param offColor   开关关掉时的颜色
 *  @param thumbColor 按钮的颜色
 *
 *  @return CustomSwitch对象
 */
-(instancetype)initWithFrame:(CGRect)frame onColor:(UIColor *)onColor offColor:(UIColor *)offColor thumbColor:(UIColor *)thumbColor;
/**
 *  添加开关关闭/打开时执行的方法
 *
 *  @param target 执行方法的对象
 *  @param action 方法
 */
-(void)addTarget:(id)target forSwitchValueDidChangedAction:(SEL)action;

@end
