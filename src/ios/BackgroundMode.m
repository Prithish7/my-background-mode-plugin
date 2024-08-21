#import "BackgroundMode.h"
#import <Cordova/CDV.h>

@interface BackgroundMode : CDVPlugin
@end

@implementation BackgroundMode

- (void)enable:(CDVInvokedUrlCommand*)command {
    // Implementation for enabling background mode
    [[UIApplication sharedApplication] beginBackgroundTaskWithExpirationHandler:^{
        // Handle task expiration
    }];
    CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"Background mode enabled"];
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

- (void)disable:(CDVInvokedUrlCommand*)command {
    // Implementation for disabling background mode
    [[UIApplication sharedApplication] endBackgroundTask:[self.backgroundTaskId integerValue]];
    CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"Background mode disabled"];
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

@end
