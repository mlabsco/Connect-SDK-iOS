//
//  WebOSTVService+WebOSTVService_Extension.m
//  LGRemote
//
//  Created by ato on 5/22/20.
//  Copyright © 2020 Toan Quach. All rights reserved.
//

#import "WebOSTVService+Extension.h"

@implementation WebOSTVService (Extension)

- (void)sendKeyCodeString:(NSString *)keyCode success:(SuccessBlock)success failure:(FailureBlock)failure
{
    if (self.mouseSocket)
    {
        [self.mouseSocket custombutton:keyCode];
        
        if (success)
            success(nil);
    } else {
        [self.mouseControl connectMouseWithSuccess:^(id responseObject)
         {
            [self.mouseSocket custombutton:keyCode];
            
            if (success)
                success(nil);
        } failure:failure];
    }
}

@end
