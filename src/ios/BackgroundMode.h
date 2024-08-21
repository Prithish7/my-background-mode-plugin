#import <Cordova/CDV.h>

@interface BackgroundMode : CDVPlugin

- (void)enable:(CDVInvokedUrlCommand*)command;
- (void)disable:(CDVInvokedUrlCommand*)command;

@end
