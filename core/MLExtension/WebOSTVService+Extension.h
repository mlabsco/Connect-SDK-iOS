//
//  WebOSTVService+WebOSTVService_Extension.h
//  LGRemote
//
//  Created by ato on 5/22/20.
//  Copyright © 2020 Toan Quach. All rights reserved.
//
#import "WebOSTVService.h"

NS_ASSUME_NONNULL_BEGIN

@interface WebOSTVService (Extension)
- (void)sendKeyCodeString:(NSString *)keyCode success:(SuccessBlock)success failure:(FailureBlock)failure;
@end

NS_ASSUME_NONNULL_END
