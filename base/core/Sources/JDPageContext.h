//
//  JDPageContext.h
//  JDCore
//
//  Created by JD on 2018/10/19.
//

#import <Foundation/Foundation.h>
#import "JDPageEvent.h"

NS_ASSUME_NONNULL_BEGIN

@interface JDPageContext : NSObject

//当前的vc
@property (nonatomic, weak) UIViewController *pageViewController;

//额外数据
@property (nonatomic, strong) id userInfo;

/// 发送事件
/// @param event 事件对象
/// @param featureID feature id，可传枚举
- (void)sendEvent:(JDPageEvent *)event featureID:(NSInteger)featureID;

@end

NS_ASSUME_NONNULL_END
