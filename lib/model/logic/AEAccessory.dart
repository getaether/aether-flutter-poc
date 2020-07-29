import './AERoom.dart';

class AEAccessory {
  String name, identifier, category, model, roomId;
  AERoom room;

  AEAccessory(this.name, this.identifier, this.category, this.model,
      this.roomId, this.room);
}