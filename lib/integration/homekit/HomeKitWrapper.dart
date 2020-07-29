import 'package:aether/integration/homekit/AbstractWrapper.dart';
import 'package:aether/integration/homekit/HomeKitChannelManager.dart';

class HomeKitWrapper extends AbstractWrapper {

  HomeKitChannelManager manager = HomeKitChannelManager();

  @override
  String details() {
    this.manager.getDetails().then((value) => print("Veio!"));
  }

}