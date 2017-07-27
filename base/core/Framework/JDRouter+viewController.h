//
//  JDRouter+viewController.h
//  Pods
//
//  Created by 王金东 on 2017/7/27.
//
//

#import "JDRouter.h"

@interface JDRouter (viewController)

+ (void)registerURI:(NSString *)URI
            handler:(JDRouterHandler)handler
              toVc:(UIViewController *(^)())toVcClazz;

+ (void)openURI:(NSString *)URI
         fromVc:(UIViewController *)fromVc
     completion:(void (^)(id result))completion;

+ (void)openURI:(NSString *)URI
         fromVc:(UIViewController *)fromVc
       userInfo:(NSDictionary *)userInfo
     completion:(void (^)(id result))completion;


@end
