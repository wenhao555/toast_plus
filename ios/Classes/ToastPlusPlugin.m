#import "ToastPlusPlugin.h"
#if __has_include(<toast_plus/toast_plus-Swift.h>)
#import <toast_plus/toast_plus-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "toast_plus-Swift.h"
#endif

@implementation ToastPlusPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftToastPlusPlugin registerWithRegistrar:registrar];
}
@end
