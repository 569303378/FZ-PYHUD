//
//  ViewController.m
//  PYzidingyishitu
//
//  Created by Apple on 16/8/11.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "ViewController.h"
#import "NSString+PYmimapanduan.h"
#import "MBProgressHUD.h"

@interface ViewController () <MBProgressHUDDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (nonatomic, strong)MBProgressHUD *HUD;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    self.view.backgroundColor = [UIColor orangeColor];
    

}
- (IBAction)HUDButton:(UIButton *)sender {
    _HUD = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    _HUD.delegate = self;
//    _HUD.color = [UIColor redColor];
    //自定义图片
    UIImage *image = [[UIImage imageNamed:@"0.jpg"] imageWithRenderingMode:UIImageRenderingModeAutomatic];//自定义图片
    
    _HUD.customView = [[UIImageView alloc] initWithImage:image];
    
    _HUD.opacity = 0.7f;
    
    _HUD.mode = MBProgressHUDModeCustomView;
    
    _HUD.labelText = @"1111111111111";
    
    [_HUD show:YES];
    
    [_HUD hide:YES afterDelay:1.3];
    

    //设置参数
    //矩形背景色
//    _HUD.color = [UIColor redColor];
////    _HUD.opacity = 0.5;
//    _HUD.labelText = @"123";
//    _HUD.detailsLabelText = @"细节文字";
//    //是否遮罩
//    _HUD.dimBackground = NO;
//    [_HUD hide:YES afterDelay:2];
    
    //只显示文字
//        _HUD.mode = MBProgressHUDModeText;
//        _HUD.labelText = @"只显示文字";
//        _HUD.margin = 10;
//        _HUD.yOffset = 15;
//        _HUD.removeFromSuperViewOnHide = YES;
//        [_HUD hide:YES afterDelay:3];
    
    //bolock
//    _HUD = [[MBProgressHUD alloc] initWithView:self.view];
//    [self.view addSubview:_HUD];
//    _HUD.labelText = @"Test";
//    [_HUD showAnimated:YES whileExecutingBlock:^{
//        NSLog(@"11");
//        
//    } completionBlock:^{
//        [_HUD removeFromSuperview];
//    }];
    
    //圆形进度条
//    _HUD = [[MBProgressHUD alloc] initWithView:self.view];
//    
//    [self.view addSubview:_HUD];
//    
//    _HUD.mode = MBProgressHUDModeAnnularDeterminate;
//    
//    _HUD.delegate = self;
//    
//    _HUD.labelText = @"Loading";
//    
//    [_HUD showWhileExecuting:@selector(myProgressTask) onTarget:self withObject:nil animated:YES];
    
    
    //自定义view﻿
    

    

    
}
- (void)myProgressTask{
}

#pragma mark = HUD
-(void)hudWasHidden:(MBProgressHUD *)hud {
    NSLog(@"1");
//    [hud removeFromSuperview];
//    hud = nil;
}


- (IBAction)button:(UIButton *)sender {
    [NSString vaildPassWord:self.textField.text view:self.view];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
