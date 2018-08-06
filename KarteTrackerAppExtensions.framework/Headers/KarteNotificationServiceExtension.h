//
//  KarteNotificationServiceExtension.h
//  KarteTrackerAppExtensions
//
//  Created by tomoki.koga on 2018/04/19.
//  Copyright (c) 2018 PLAID inc. All rights reserved.
//

#import <UserNotifications/UserNotifications.h>

__IOS_AVAILABLE(10.0) __TVOS_PROHIBITED __WATCHOS_PROHIBITED

@interface KarteNotificationServiceExtension : UNNotificationServiceExtension

- (BOOL)canHandleRemoteNotification:(nonnull NSDictionary *)userInfo;

@end
