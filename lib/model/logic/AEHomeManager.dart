import 'package:aether/model/logic/AEListManager.dart';

class AEHomeManager<AEHome> extends AEListManager {

  // TODO get from HomeKit/Google Home
  AEHome primaryHome() => super.list.first;

  List<AEHome> get homes => super.list;

  AEHomeManager() : super(super.list);
}