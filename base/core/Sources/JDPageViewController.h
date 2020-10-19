//
//  JDPageViewController.h
//  JDCore
//
//  Created by JD on 2020/10/19.
//

#import <UIKit/UIKit.h>
#import "JDPageManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface JDPageViewController : UIViewController

@property (nonatomic, strong, readonly) JDPageManager *pageManager;

- (void)configFeature;

@end

NS_ASSUME_NONNULL_END
