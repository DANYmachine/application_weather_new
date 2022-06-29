abstract class CityDeleteEvent {}

class DeleteEvent extends CityDeleteEvent {
  var idToDelete;
  DeleteEvent({required int idToDelete}) {
    this.idToDelete = idToDelete;
  }
}

class DeleteInitEvent extends CityDeleteEvent {}
