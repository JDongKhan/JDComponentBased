//
//  JDPageEvent.m
//  JDCore
//
//  Created by JD on 2020/10/19.
//

#import "JDPageEvent.h"

@implementation JDPageEvent

+ (instancetype)eventWithID:(NSInteger)eventID
                   userInfo:(NSDictionary *)userInfo
                   callback:(JDPageEventCallBack)callback {
    JDPageEvent *event = [[JDPageEvent alloc] init];
    event.eventID = eventID;
    event.userInfo = userInfo;
    event.callback = callback;
    return event;
}

@end
