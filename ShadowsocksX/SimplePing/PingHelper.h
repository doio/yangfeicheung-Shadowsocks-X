//
//  PingHelper.h
//  ShadowsocksX
//
//  Created by Delphi Yuan on 11/24/17.
//  Copyright © 2017 AFEGames. All rights reserved.
//

#ifndef PingHelper_h
#define PingHelper_h

#import "SimplePing.h"

/*! The main object for our tool.
 *  details This exists primarily because SimplePing requires an object to act as its delegate.
 */

@interface PingHelper : NSObject <SimplePingDelegate>
{
    int ;
}

@property (nonatomic, assign, readwrite) BOOL                   forceIPv4;
@property (nonatomic, assign, readwrite) BOOL                   forceIPv6;
@property (nonatomic, strong, readwrite, nullable) SimplePing * pinger;
@property (nonatomic, strong, readwrite, nullable) NSTimer *    sendTimer;
@property ( nonatomic,strong, readwrite, nullable) NSDate *     startTime;
@property (nonatomic, assign, readwrite) int                    pingCount;
@property (nonatomic, assign, readwrite) double                 pingTotalTime;//this is the total ping time,e.g., we ping 5 times and then get the average value

+(void)pingHostname:(NSString*)hostName;

@end

#endif /* PingHelper_h */
