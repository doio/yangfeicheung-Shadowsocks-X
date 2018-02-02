//
//  PingHelper.h
//  ShadowsocksX
//
//  Created by Yangfei Cheung on 11/24/17.
//  Copyright © 2017 Sednax. All rights reserved.
//

#ifndef PingHelper_h
#define PingHelper_h

#import "SimplePing.h"

/*! The main object for our tool.
 *  details This exists primarily because SimplePing requires an object to act as its delegate.
 */

@interface PingHelper : NSObject <SimplePingDelegate>

@property (nonatomic, assign, readwrite) BOOL                   forceIPv4;
@property (nonatomic, assign, readwrite) BOOL                   forceIPv6;
@property (nonatomic, strong, readwrite, nullable) SimplePing * pinger;
@property (nonatomic, strong, readwrite, nullable) NSTimer *    sendTimer;
@property ( nonatomic,strong, readwrite, nullable) NSDate *     startTime;
//@property (nonatomic, assign, readwrite) int                    pingCount;
//@property (nonatomic, assign, readwrite) double                 pingTotalTime;//total ping time,e.g., we ping 3 times and  get average value
@property (nonatomic, assign, readwrite) int                    currentPingIndex;
@property (nonatomic, assign, readwrite) int                    maxFailedPingAllowed;//if  failed more than this,we stop ping and move to next

- (void)stopPing;
- (void)pingNextServer;
+ (void)pingHostname:(NSString* _Nonnull)hostName;
+ (PingHelper* _Nonnull)sharedInstance;

@end

#endif /* PingHelper_h */
