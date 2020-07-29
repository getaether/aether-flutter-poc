import 'package:aether/model/AEListManager.dart';

class AEHome<AERoom> extends AEListManager {

  // TODO get default room
  AERoom get defaultRoom => this.list.first;

  List<AERoom> get rooms => super.list;

}