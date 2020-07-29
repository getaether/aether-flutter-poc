import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    let _ = HomeKitWrapper.instance
  let CHANNEL_NAME = "co.getaether/getaether-flutter"
    let controller: FlutterViewController = window?.rootViewController as! FlutterViewController
    let channel = FlutterMethodChannel(name: CHANNEL_NAME, binaryMessenger: controller.binaryMessenger)

  channel.setMethodCallHandler { [unowned self] (call, result) in
    switch call.method {
    case "getDetails": result(HomeKitWrapper.instance.getTransformedHomes())
         default: result("Deu ruim pai")
     }
  }

    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
