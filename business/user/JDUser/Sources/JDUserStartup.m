//
//  JDUserStartup.m
//  
//
//  Created by JD on 2019/9/11.
//

#import "JDUserStartup.h"
#import <JDRouter/JDAnnotation.h>

@JDModule(JDUserStartup)
@implementation JDUserStartup

/**
 优先级
 */
- (NSInteger)applicationPriority {
    return 0;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSLog(@"didFinishLaunchingWithOptions: %@",NSStringFromClass(self.class));
    return YES;
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    NSLog(@"applicationDidBecomeActive: %@",NSStringFromClass(self.class));
}

- (void)applicationWillResignActive:(UIApplication *)application {
    NSLog(@"applicationWillResignActive: %@",NSStringFromClass(self.class));
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    NSLog(@"applicationDidEnterBackground: %@",NSStringFromClass(self.class));
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    NSLog(@"applicationWillEnterForeground: %@",NSStringFromClass(self.class));
}

// try to clean up as much memory as possible. next step is to terminate app
- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    NSLog(@"applicationDidReceiveMemoryWarning: %@",NSStringFromClass(self.class));
}

- (void)applicationWillTerminate:(UIApplication *)application {
    NSLog(@"applicationWillTerminate: %@",NSStringFromClass(self.class));
}

@end
