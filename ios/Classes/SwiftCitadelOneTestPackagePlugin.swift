import Flutter
import UIKit

public class SwiftCitadelOneTestPackagePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "citadel_one_test_package", binaryMessenger: registrar.messenger())
    let instance = SwiftCitadelOneTestPackagePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
