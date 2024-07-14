import 'package:cloud_firestore/cloud_firestore.dart';

import '../../models/todos/todos_model.dart';

class FirestoreService {
  Stream<List<TodosModel>> getItemsStream() {
    // final userID = FirebaseAuth.instance.currentUser?.uid;
    // if (userID == null) {
    //   throw Exception('User is not logged in.');
    // }
    final docSnap = FirebaseFirestore.instance.collection('todos').snapshots();

    return docSnap.map((todos) =>
        todos.docs.map((todo) => TodosModel.fromJson(todo.data())).toList());
  }
}
