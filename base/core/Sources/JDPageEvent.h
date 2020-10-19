//
//  JDPageEvent.h
//  JDCore
//
//  Created by JD on 2020/10/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^JDPageEventCallBack)(NSDictionary *userInfo);

@interface JDPageEvent : NSObject

@property (nonatomic, assign) NSInteger eventID;

@property (nonatomic, strong) NSDictionary *userInfo;

@property (nonatomic, copy) JDPageEventCallBack callback;

+ (instancetype)eventWithID:(NSInteger)eventID
                   userInfo:(NSDictionary *)userInfo
                   callback:(JDPageEventCallBack)callback;

@end

NS_ASSUME_NONNULL_END
