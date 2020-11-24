import 'package:aether/model/logic/AEAccessory.dart';
import 'package:aether/model/logic/AEHomeManager.dart';

abstract class AEModelBuilder {
  AEHomeManager get homeManager;
}

class AEiOSModelBuilder extends AEModelBuilder{

  @override
  // TODO: implement homeManager
  AEHomeManager get homeManager => throw UnimplementedError();

}

class AEAndroidModelBuilder extends AEModelBuilder {
  @override
  // TODO: implement homeManager
  AEHomeManager get homeManager => throw UnimplementedError();

}

class AEMockedModelBuilder extends AEModelBuilder {
  @override
  // TODO: implement homeManager
  AEHomeManager get homeManager {
//    var accessories = [
//      AEAccessory("1", "1", "1", "1", "1", room),
//      AEAccessory("2", "2", "2", "2", "2", room),
//      AEAccessory("1", "1", "1", "1", "1", room),
//      AEAccessory("1", "1", "1", "1", "1", room),
//      AEAccessory("1", "1", "1", "1", "1", room),
//    ]
  }

}