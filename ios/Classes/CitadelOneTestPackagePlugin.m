#import "CitadelOneTestPackagePlugin.h"
#if __has_include(<citadel_one_test_package/citadel_one_test_package-Swift.h>)
#import <citadel_one_test_package/citadel_one_test_package-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "citadel_one_test_package-Swift.h"
#endif

@implementation CitadelOneTestPackagePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCitadelOneTestPackagePlugin registerWithRegistrar:registrar];
}
@end
