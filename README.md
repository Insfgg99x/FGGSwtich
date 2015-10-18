FGGSwitch 简介<br>
![演示](https://github.com/Insfgg99x/FGGSwitch/blob/master/on.png)<br>
![演示](https://github.com/Insfgg99x/FGGSwitch/blob/master/off.png)<br>
<br>
-----------------------------------------------------------------------------------------<br>
一、前言：<br>
->FGGSwtich是UIView的子类，目的是为了实现随意改变Switch的大小。<br>
->由于系统自带的UISwitch的frame固定为53x31无法修改，因此自定义一个Switch。<br>
->FGGSwitch虽然看起来和UISwitch差不多，但嘴本质的区别是：FGGSwitch可以随意改变大小，而UISwtich则不能改变大小(其大小固定为53x31)！<br>
->FGGSwitch——可以改变大小的UISwitch<br>
<br>
二、用法：<br>
@required<br>
<br>
1.导入FGGSwitch.h文件<br>
2.用initWithFrame:(CGRect)frame onColor:(UIColor *)onColor offColor:(UIColor *)offColor thumbColor:(UIColor *)thumbColor方法创建一个FGGSwitch对象，并添加到父视图。<br>
<br>
@optinal<br>
<br>
3.你可以调用addTarget:(id)target ForSwitchValueDidChangedAction:(SEL)action方法为FGGSwitch对象添加开关状态改变时调用的方法。<br>
------------------------------------------------------------------------<br>
可能会更新，请参考gitHub代码地址：https://github.com/Insfgg99x/FGGSwtich.git 请多多支持！<br>
-----------------------------------------------------------------------------------------<br>
Copyright (c) 2015年 xia. All rights reserved.<br>


