import '../../models/todo/todo.dart';
import '../../services/firestore/firestore_service.dart';

class FirestoreRepository {
  final _firestoreService = FirestoreService();

  Stream<List<Todo>> getItemsStream() => _firestoreService.getItemsStream();
}
