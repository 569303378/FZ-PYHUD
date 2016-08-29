//
//  NSString+PYmimapanduan.m
//  PYzidingyishitu
//
//  Created by Apple on 16/8/11.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "NSString+PYmimapanduan.h"
#import "MBManager.h"

@implementation NSString (PYmimapanduan)
//判断是否含有非法字符 yes 有  no没有

+ (BOOL)JudgeTheillegalCharacter:(NSString *)content{
    
    NSString *str =@"^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,20}$";
    
    NSPredicate* emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", str];
    
    if (![emailTest evaluateWithObject:content]) {
        
        return YES;
        
    }
    
    return NO;
    
}


//判断密码有效性
+(NSString *) vaildPassWord : (NSString *)passWd view:(UIView *)view

{
     
    NSString *errMsg = nil;
    
    if (passWd == nil || passWd.length == 0) {
        
        errMsg = @"密码为空";
        [MBManager showAlertWithCustomImage:@"0.jpg" title:@"搜索为空!" inView:view];

        
    } else if(passWd.length < 8 || passWd.length > 20){
        
        errMsg = @"密码长度8 - 20位";
        [MBManager showBriefMessage:errMsg InView:view];

        
    } else if([self JudgeTheillegalCharacter:passWd]){
        
        errMsg = @"密码 = 字母 + 数字";
        [MBManager showBriefMessage:errMsg InView:view];
        
    } else {
        NSLog(@"密码格式正确");
    }
    
    return errMsg;
    
}


@end
