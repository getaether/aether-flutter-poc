import 'package:aether/model/logic/AEAccessory.dart';
import 'package:aether/model/logic/AEListManager.dart';

class AEHome<AERoom> extends AEListManager {

  // TODO get default room
  AERoom get defaultRoom => this.list.first;

  List<AERoom> get rooms => super.list;
  List<AEAccessory> _accessories;

  bool isPrimary;
  String name, uniqueIdentifier;

  AEHome(this._accessories, this.isPrimary, this.name, this.uniqueIdentifier) : super(super.list);
}