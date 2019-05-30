//
//  AppDelegate.m
//  XIB
//
//  Created by Civet on 2019/5/22.
//  Copyright © 2019年 PandaTest. All rights reserved.
//

#import "AppDelegate.h"
#import "VCRootViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //创建一个窗口对象
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    //创建根视图控制器对象
    //参数一：创建时加载的XIB资源文件名，加载XIB作为视图的控制器视图
    //参数二：是指主文件包，XIB所在的位置
    //mainBundle是主资源文件包
    //如果bundle参数为nil,函数会自动到mainBundle中查找
    //显示加载XIB资源文件
    VCRootViewController *root = [[VCRootViewController alloc] initWithNibName:@"VCRootViewController" bundle:[NSBundle mainBundle]];
    
    //隐式加载
    //如果系统中有XIB的名字根类名VCRootViewController相同，init函数会自动去加载VCRootViewController文件
    //VCRootViewController *root = [[VCRootViewController alloc] init];
    
    self.window.rootViewController = root;
    [self.window makeKeyAndVisible];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
