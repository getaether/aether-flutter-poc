import 'package:flutter/services.dart';

class HomeKitChannelManager {

  // WARNING do not change this unless you change it in AppDelegate.swift as well!!
  static const String CHANNEL_NAME = "co.getaether/getaether-flutter";
  MethodChannel platform =  MethodChannel(CHANNEL_NAME);

  Future<String> getDetails() async {
    try {
      // WARNING do not change this unless you change it in AppDelegate.swift as well!!
      return platform.invokeMethod("getDetails");
    } catch (e) {
      print("Erro nos detalhes! $e");
    }

    return null;
  }

}