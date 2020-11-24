//
//  ChannelWrapper.swift
//  Runner
//
//  Created by Bruno Pastre on 29/07/20.
//

import Foundation

class ChannelWrapper {
    
    let CHANNEL_NAME = "co.getaether/getaether-flutter"
    
    static let instance = ChannelWrapper()
    
    var controller: FlutterViewController!
    var channel: FlutterMethodChannel!
    
    private init() {
    
    }
    
    func load(binaryMessenger: FlutterBinaryMessenger) {
        
         channel = FlutterMethodChannel(name: CHANNEL_NAME, binaryMessenger: binaryMessenger)

          channel.setMethodCallHandler { [unowned self] (call, result) in
            switch call.method {
                case "getDetails": result(HomeKitWrapper.instance.getTransformedHomes())
                default: result("Deu ruim pai")
             }
            
            
          }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
            self.onDevicesChanged()
        }
    }
    
    func onDevicesChanged() {
        print("They changed!")
        self.channel.invokeMethod("onDevicesChanged", arguments: nil)
    }
}
