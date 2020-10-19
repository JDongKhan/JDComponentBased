//
//  JDPageFeature.h
//  JDCore
//
//  Created by JD on 2018/10/19.
//

#import <Foundation/Foundation.h>
#import "JDPageFeatureProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface JDPageFeature : NSObject<JDPageFeatureProtocol>

@property (nonatomic, assign) NSInteger featureID;

@end

NS_ASSUME_NONNULL_END
