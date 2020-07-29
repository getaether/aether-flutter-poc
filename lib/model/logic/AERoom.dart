
import 'package:aether/model/logic/AEListManager.dart';

class AERoom<AEAccessory> extends AEListManager{

  List<AEAccessory> get accessories => this.list;
  String name, uuid;

  AERoom(this.name, this.uuid) : super(super.list);
}