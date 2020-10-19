//
//  JDPageContext.m
//  JDCore
//
//  Created by JD on 2018/10/19.
//

#import "JDPageContext.h"
#import "JDPageViewController.h"
#import "JDPageFeature.h"

@implementation JDPageContext

- (void)sendEvent:(JDPageEvent *)event featureID:(NSInteger)featureID {
    if ([self.pageViewController isKindOfClass:[JDPageViewController class]]) {
        JDPageViewController *pageVC = (JDPageViewController *)self.pageViewController;
        JDPageFeature *feature = [pageVC.pageManager featureForTag:featureID];
        if ([feature respondsToSelector:@selector(receiveEvent:context:)]) {
            [feature receiveEvent:event context:self];
        }
    }
}

@end
