//
//  JDRouter.h
//  Pods
//
//  Created by 王金东 on 2016/7/27.
//
//

#import <Foundation/Foundation.h>


extern NSString *const JDRouterURL;
extern NSString *const JDRouterCompletion;


typedef void (^JDRouterHandler)(NSDictionary *parameters);
typedef id (^JDRouterObjectHandler)(NSDictionary *parameters);

@interface JDRouter : NSObject


+ (void)registerURI:(NSString *)URI handler:(JDRouterHandler)handler;
+ (void)registerURI:(NSString *)URI objectHandler:(JDRouterObjectHandler)handler;
+ (void)unRegisterURI:(NSString *)URI;

+ (void)openURI:(NSString *)URI
     completion:(void (^)(id result))completion;

+ (void)openURI:(NSString *)URI
   userInfo:(NSDictionary *)userInfo
     completion:(void (^)(id result))completion;


+ (BOOL)canOpenURI:(NSString *)URI;

+ (id)objectForURI:(NSString *)URI;
+ (id)objectForURI:(NSString *)URI userInfo:(NSDictionary *)userInfo;

@end
