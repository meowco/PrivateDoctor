//
//  mainViewController.m
//  PrivateDoctor
//
//  Created by 猫儿出墙 on 2017/6/22.
//  Copyright © 2017年 Meowco. All rights reserved.
//

#import "mainViewController.h"
#import "homepageTableViewController.h"
#import "diagnoseTableViewController.h"
#import "medicineTableViewController.h"
#import "shopTableViewController.h"
#import "settingTableViewController.h"


#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]


@interface mainViewController ()

@end

@implementation mainViewController {
    homepageTableViewController *_homepageTBViewController;
    diagnoseTableViewController *_diagnoseTBViewController;
    medicineTableViewController *_medicineTBViewController;
    shopTableViewController *_shopTBViewController;
    settingTableViewController *_settingTBViewController;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _homepageTBViewController.tabBarItem.title = @"首页";
    _homepageTBViewController.tabBarItem.image = [UIImage imageNamed:@"homepage"];
    
    _diagnoseTBViewController.tabBarItem.title = @"问诊";
    _diagnoseTBViewController.tabBarItem.image = [UIImage imageNamed:@"diagnose"];
    
    _medicineTBViewController.tabBarItem.title = @"药房";
    _medicineTBViewController.tabBarItem.image = [UIImage imageNamed:@"medicine"];
    
    _shopTBViewController.tabBarItem.title = @"购物车";
    _shopTBViewController.tabBarItem.image = [UIImage imageNamed:@"shop"];
    
    _settingTBViewController.tabBarItem.title = @"个人";
    _settingTBViewController.tabBarItem.image = [UIImage imageNamed:@"setting"];
    
    self.viewControllers = @[_homepageTBViewController, _diagnoseTBViewController, _medicineTBViewController, _shopTBViewController, _shopTBViewController, _settingTBViewController];
    
    self.tabBar.tintColor = UIColorFromRGB(0x7CE7FF);
    // Do any additional setup after loading the view.
    
}


@end
