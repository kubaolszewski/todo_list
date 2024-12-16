import 'package:cloud_firestore/cloud_firestore.dart';

import '../../models/todo/todo.dart';

class FirestoreService {
  Stream<List<Todo>> getItemsStream() {
    // final userID = FirebaseAuth.instance.currentUser?.uid;
    // if (userID == null) {
    //   throw Exception('User is not logged in.');
    // }
    final docSnap = FirebaseFirestore.instance.collection('todos').snapshots();

    return docSnap.map(
      (todos) => todos.docs.map((todo) => Todo.fromJson(todo.data())).toList(),
    );
  }
}
