//
//  ViewController.m
//  XYAutoScrollLabelDemo
//
//  Created by CETzxy on 2018/12/18.
//  Copyright © 2018年 Wcaulpl. All rights reserved.
//

#import "ViewController.h"
#import "XYAutoScrollLabel.h"

@interface ViewController ()

@property (nonatomic, weak) XYAutoScrollLabel *titleNav;
@property (nonatomic, weak) XYAutoScrollLabel *titleLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /* 自定义导航 栏 */
    XYAutoScrollLabel *titleNav = [[XYAutoScrollLabel alloc] init];
    self.titleNav = titleNav;
    titleNav.text = @"导航自然title";
    titleNav.textColor = [UIColor blackColor];
    self.navigationItem.titleView = titleNav;
    
    
    XYAutoScrollLabel *titleLabel = [[XYAutoScrollLabel alloc] initWithFrame:CGRectMake(30, 100, 300, 40)];
    self.titleLabel = titleLabel;
    titleLabel.textColor = [UIColor blackColor];
    titleLabel.text = @"label自然title";
    [self.view addSubview:self.titleLabel];
}

- (IBAction)changeNav:(id)sender {
    if ([self.titleNav.text isEqualToString:@"导航自然title"]) {
        self.titleNav.text = @"导航滚动title: 这是一段很长很长很长很长很长很长很长很长很长很长很长很长很长很长的一段文字";
    } else {
        self.titleNav.text = @"导航自然title";
    }
}

- (IBAction)changeLabel:(id)sender {
    if ([self.titleLabel.text isEqualToString:@"label自然title"]) {
        self.titleLabel.text = @"label滚动title: 这是一段很长很长很长很长很长很长很长很长很长很长很长很长很长很长的一段文字";
    } else {
        self.titleLabel.text = @"label自然title";
    }
}

@end
