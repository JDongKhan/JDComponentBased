//
//  JDPageViewController.m
//  JDCore
//
//  Created by JD on 2020/10/19.
//

#import "JDPageViewController.h"

@interface JDPageViewController ()

@property (nonatomic, strong, readwrite) JDPageManager *pageManager;

@property (nonatomic, strong) JDPageContext *context;

@end

@implementation JDPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configFeature];
    [self.pageManager viewDidLoad:self.context];
    // Do any additional setup after loading the view.
}

- (void)configFeature {
    NSAssert(YES, @"必须要重写configFeature方法");
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.pageManager viewWillAppear:self.context];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self.pageManager viewDidAppear:self.context];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [self.pageManager viewWillDisappear:self.context];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    [self.pageManager viewDidDisappear:self.context];
}

- (JDPageManager *)pageManager {
    if (_pageManager == nil) {
        _pageManager = [[JDPageManager alloc] init];
    }
    return  _pageManager;;
}

- (JDPageContext *)context {
    if (_context == nil) {
        _context = [[JDPageContext alloc] init];
        _context.pageViewController = self;
    }
    return _context;
}


@end
