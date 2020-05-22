//
//  WebOSTVServiceMouse+Extension.m
//  ConnectSDK
//
//  Created by ato on 5/22/20.
//

#import "WebOSTVServiceMouse+Extension.h"

@implementation WebOSTVServiceMouse (Extension)

- (void) custombutton:(NSString *)keyString
{
    if (keyString)
    {
        NSString *buttonString = [NSString stringWithFormat:@"type:button\nname:%@\n\n", keyString];
        [self sendPackage:buttonString];
    }
}


@end
