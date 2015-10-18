//
//  CustomSwitch.m
//  park
//
//  Created by 风过的夏 on 15/10/18.
//  Copyright (c) 2015年 夏桂峰. All rights reserved.
//

#import "FGGSwitch.h"

@interface FGGSwitch()
{
    //开关值改变时，调用值改变方法的对象
    id  _target;
    //值改变时调用的方法
    SEL _action;
}
/**
 *  椭圆底部
 */
@property(nonatomic,strong,readonly)UIView *baseView;
/**
 *  转换开关状态的按钮
 */
@property(nonatomic,strong,readonly)UIButton *shiftBtn;

@end

@implementation FGGSwitch

-(instancetype)initWithFrame:(CGRect)frame onColor:(UIColor *)onColor offColor:(UIColor *)offColor thumbColor:(UIColor *)thumbColor
{
    if(self=[super initWithFrame:frame])
    {
        _onColor=onColor;
        _offColor=offColor;
        _thumbColor=thumbColor;
        //默认打开开关
        self.on=YES;
        [self createSwtich];
    }
    return self;
}
-(void)createSwtich
{
    _baseView=[[UIView alloc]initWithFrame:self.bounds];
    //椭圆形
    _baseView.layer.cornerRadius=self.bounds.size.height/2.0;
    //因为开关默认是打开的
    _baseView.backgroundColor=_onColor;
    [self addSubview:_baseView];
    
    _shiftBtn=[[UIButton alloc]initWithFrame:CGRectMake(self.bounds.size.width-self.bounds.size.height, 0, self.bounds.size.height, self.bounds.size.height)];
    _shiftBtn.backgroundColor=_thumbColor;
    _shiftBtn.layer.cornerRadius=self.bounds.size.height/2.0;
    //点击
    [_shiftBtn addTarget:self action:@selector(shift) forControlEvents:UIControlEventTouchUpInside];
    //拖出
    [_shiftBtn addTarget:self action:@selector(shift) forControlEvents:UIControlEventTouchDragOutside];
    [_baseView addSubview:_shiftBtn];
}
/**
 *  转换开关的打开及关闭状态
 */
-(void)shift
{
    self.on=!self.isOn;
    
    if(_target&&_action)
    {
       [_target performSelector:_action];
    }
    __weak typeof(self) weakSelf=self;
    if(self.isOn)
    {
        [UIView animateWithDuration:0.1 animations:^{
            
            weakSelf.shiftBtn.frame=CGRectMake(self.bounds.size.width-self.bounds.size.height, 0, self.bounds.size.height, self.bounds.size.height);
            weakSelf.baseView.backgroundColor=weakSelf.onColor;
        }];
    }
    else
    {
       [UIView animateWithDuration:0.1 animations:^{
        weakSelf.shiftBtn.frame=CGRectMake(0, 0, self.bounds.size.height, self.bounds.size.height);
        weakSelf.baseView.backgroundColor=weakSelf.offColor;
        }];
    }
}
/**
 *  开关值改变的方法
 *
 *  @param action <#action description#>
 */
-(void)addTarget:(id)target forSwitchValueDidChangedAction:(SEL)action
{
    _target=target;
    _action=action;
}
@end
