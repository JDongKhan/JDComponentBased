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

@property (nonatomic, weak) UIViewController *pageViewController;

@property (nonatomic, strong) id userInfo;

- (void)sendEvent:(JDPageEvent *)event featureID:(NSInteger)featureID;

@end

NS_ASSUME_NONNULL_END
