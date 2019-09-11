//
//  JDMainViewController.m
//  JDMainApp
//
//  Created by JD on 2019/9/11.
//  Copyright © 2019 王金东. All rights reserved.
//

#import "JDMainViewController.h"

@interface JDMainViewController ()

@end

@implementation JDMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupVc:@[
        @{
            @"title" : @"首页",
            @"viewController" : @"ViewController"
        },
        @{
           @"title" : @"订单",
            @"viewController" : @"JDOrderViewController"
        },
        @{
           @"title" : @"用户",
           @"viewController" : @"JDUserViewController"
        }
    ]];
    // Do any additional setup after loading the view.
}

- (void)setupVc:(NSArray *)configs {
    NSMutableArray *vcs = [NSMutableArray array];
    for (NSDictionary *config in configs) {
        Class vcClass = NSClassFromString(config[@"viewController"]);
        NSString *title = config[@"title"];
        UITabBarItem *item = [[UITabBarItem alloc] initWithTitle:title image:nil tag:0];
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:[[vcClass alloc] init]];
        nav.tabBarItem = item;
        [vcs addObject:nav];
    }
    self.viewControllers = vcs;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
