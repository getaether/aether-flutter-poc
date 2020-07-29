import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {

  let CHANNEL_NAME = "co.getaether/getaether-flutter"
  let controller = window?.rootViewController as! FlutterViewController
  let channel = FlutterMethodChannel(name: CHANNEL_NAME, binaryMessenger: controller)

  channel.setMethodCallHelper { [unowned self] (call, result) in
    switch call.method {
         case "getDetails": result("TA AI OS DETALHES")
         default: result("Deu ruim pai")
     }
  }

    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
