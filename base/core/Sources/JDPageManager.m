//
//  JDPageManager.m
//  JDCore
//
//  Created by JD on 2018/10/19.
//

#import "JDPageManager.h"

@implementation JDPageFeatureConfig

+ (instancetype)featureWith:(JDPageFeature *)feature featureID:(NSInteger)featureID {
    JDPageFeatureConfig *config = [[JDPageFeatureConfig alloc] init];
    config.feature = feature;
    config.featureID = featureID;
    return config;
}

@end

@implementation JDPageManager {
    NSMutableArray<JDPageFeatureConfig *> *_allFeatures;
}

- (instancetype)init {
    if (self = [super init]) {
        _allFeatures = [NSMutableArray array];
    }
    return self;
}

- (void)registerAll:(NSArray<JDPageFeatureConfig *> *)features {
    [features enumerateObjectsUsingBlock:^(JDPageFeatureConfig *obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [_allFeatures addObject:obj];
    }];
}

- (void)register:(JDPageFeatureConfig *)featureConfig {
    [_allFeatures addObject:featureConfig];
}

- (void)unregister:(JDPageFeatureConfig *)featureConfig {
    [_allFeatures removeObject:featureConfig];
}

- (void)forwardInvocation:(NSInvocation *)anInvocation {
    [_allFeatures enumerateObjectsUsingBlock:^(JDPageFeatureConfig *obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if (obj.feature && [obj.feature respondsToSelector:anInvocation.selector]) {
            [anInvocation invokeWithTarget:obj.feature];
        }
    }];
}

- (JDPageFeature *)featureForTag:(NSInteger)featureID {
    __block JDPageFeature *feature = nil;
    [_allFeatures enumerateObjectsUsingBlock:^(JDPageFeatureConfig * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if (obj.featureID == featureID) {
            feature = obj.feature;
            *stop = YES;
        }
    }];
    return feature;
}

@end
