//
//  KarteNotificationServiceExtension.h
//  KarteTrackerAppExtensions
//
//  Copyright (c) 2018 PLAID inc. All rights reserved.
//

#import <UserNotifications/UserNotifications.h>

__IOS_AVAILABLE(10.0)
__TVOS_PROHIBITED
__WATCHOS_PROHIBITED

NS_ASSUME_NONNULL_BEGIN


@interface KarteNotificationServiceExtension : UNNotificationServiceExtension

- (BOOL)canHandleRemoteNotification:(NSDictionary *)userInfo;

@end

NS_ASSUME_NONNULL_END
