//
//  JDPageManager.h
//  JDCore
//
//  Created by JD on 2018/10/19.
//

#import <Foundation/Foundation.h>
#import "JDPageFeature.h"
#import "JDPageFeatureProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface JDPageFeatureConfig : NSObject
@property (nonatomic, strong) JDPageFeature *feature;
@property (nonatomic, assign) NSInteger featureID;

+ (instancetype)featureWith:(JDPageFeature *)feature featureID:(NSInteger)featureID;

@end

@interface JDPageManager : NSObject<JDPageFeatureProtocol>

//注册所有feature
- (void)registerAll:(NSArray<JDPageFeatureConfig *> *)features;

//注册单个
- (void)register:(JDPageFeatureConfig *)featureConfig;

//去除注册
- (void)unregister:(JDPageFeatureConfig *)featureConfig;

//根据id获取JDPageFeature
- (JDPageFeature *)featureForTag:(NSInteger)featureID;

@end

NS_ASSUME_NONNULL_END
