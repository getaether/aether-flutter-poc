
import 'package:aether/model/AEListManager.dart';

class HomeFacade<AEHome> extends AEListManager {

  // TODO get from HomeKit/Google Home
  AEHome primaryHome() => super.list.first;

  List<AEHome> get homes => super.list;


}