import 'dart:io' show Platform;

import 'package:aether/model/facade/AEModelBuilder.dart';
import 'package:aether/model/logic/AEHomeManager.dart';

class AEModelFacade {

  AEModelBuilder _builder;

  AEModelFacade._withBuilder(this._builder);
  factory AEModelFacade() {
    return AEModelFacade._withBuilder(AEMockedModelBuilder()); // Remove this line to use a real backend
    if (Platform.isIOS) {
      return AEModelFacade._withBuilder(AEiOSModelBuilder());
    }
    return AEModelFacade._withBuilder(AEAndroidModelBuilder());
  }

  AEHomeManager get defaultManager => this._builder.homeManager;

}