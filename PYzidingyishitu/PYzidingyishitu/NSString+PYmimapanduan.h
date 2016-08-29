//
//  NSString+PYmimapanduan.h
//  PYzidingyishitu
//
//  Created by Apple on 16/8/11.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface NSString (PYmimapanduan)
+ (BOOL)JudgeTheillegalCharacter:(NSString *)content;
+(NSString *) vaildPassWord : (NSString *)passWd view:(UIView *)view;
@end
