#import "JitsiMeetingPlusPlugin.h"
#if __has_include(<jitsi_meeting_plus/jitsi_meeting_plus-Swift.h>)
#import <jitsi_meeting_plus/jitsi_meeting_plus-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "jitsi_meeting_plus-Swift.h"
#endif

@implementation JitsiMeetingPlusPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftJitsiMeetingPlusPlugin registerWithRegistrar:registrar];
}
@end
