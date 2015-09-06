//
//  ViewController.m
//  UIViewContentMode
//
//  Created by faner on 15/9/5.
//  Copyright © 2015年 faner. All rights reserved.
//

#import "ViewController.h"



//考虑转屏的影响，按照实际屏幕方向（UIDeviceOrientation）的宽高
#define SCREEN_WIDTH        ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT       ([UIScreen mainScreen].bounds.size.height)

//不考虑转屏的影响，只取竖屏（UIDeviceOrientationPortrait）的宽高
// #define SCREEN_WIDTH        MIN([UIScree nmainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)
// #define SCREEN_HEIGHT       MAX([UIScree nmainScreen].bounds.size.height, [UIScreen mainScreen].bounds.size.width)

#define IMGVIEW_WIDTH       280
#define IMGVIEW_HEIGHT      360

@interface ViewController ()

@end

@implementation ViewController

- (void)loadView {
    [super loadView];
    
    UIView *mainView = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    mainView.alpha = 0.5;
    mainView.backgroundColor = [UIColor clearColor];
    self.view = mainView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.imgView = [[UIImageView alloc] initWithFrame:CGRectMake((SCREEN_WIDTH-IMGVIEW_WIDTH)/2, (SCREEN_HEIGHT-IMGVIEW_HEIGHT)/2, IMGVIEW_WIDTH, IMGVIEW_HEIGHT)];
    // UIImage* img = [UIImage imageNamed:@"resource/old_house.jpg"];
    UIImage* img = [UIImage imageNamed:@"resource/xiaomuwu.gif"];
    self.imgView.layer.masksToBounds = YES;
    self.imgView.layer.borderWidth = 1;
    self.imgView.layer.borderColor = [UIColor orangeColor].CGColor;
    self.imgView.contentMode = UIViewContentModeScaleAspectFit;
    self.imgView.image = img;
    [self.view addSubview:self.imgView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
