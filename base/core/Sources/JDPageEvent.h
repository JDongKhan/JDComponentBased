//
//  JDPageEvent.h
//  JDCore
//
//  Created by JD on 2020/10/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^JDPageEventCallBack)(id userInfo);

@interface JDPageEvent : NSObject

//event id，可传枚举
@property (nonatomic, assign) NSInteger eventID;

//额外信息
@property (nonatomic, strong) NSDictionary *userInfo;

//回调
@property (nonatomic, copy) JDPageEventCallBack callback;

//构造方法
+ (instancetype)eventWithID:(NSInteger)eventID
                   userInfo:(NSDictionary *)userInfo
                   callback:(JDPageEventCallBack)callback;

@end

NS_ASSUME_NONNULL_END
