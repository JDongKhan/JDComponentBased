//
//  JDPageFeatureProtocol.h
//  JDCore
//
//  Created by JD on 2020/10/19.
//

#import <Foundation/Foundation.h>
#import "JDPageContext.h"

NS_ASSUME_NONNULL_BEGIN

@protocol JDPageFeatureProtocol <NSObject>

@optional

- (void)viewDidLoad:(JDPageContext *)context;

- (void)viewWillAppear:(JDPageContext *)context;

- (void)viewDidAppear:(JDPageContext *)context;

- (void)viewWillDisappear:(JDPageContext *)context;

- (void)viewDidDisappear:(JDPageContext *)context;

- (void)receiveEvent:(JDPageEvent *)event context:(JDPageContext *)context;

@end

NS_ASSUME_NONNULL_END
