import '../../models/todos/todos_model.dart';
import '../../services/firestore/firestore_service.dart';

class FirestoreRepository {
  final _firestoreService = FirestoreService();

  Stream<List<TodosModel>> getItemsStream() =>
      _firestoreService.getItemsStream();
}
