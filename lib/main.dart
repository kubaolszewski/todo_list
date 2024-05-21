import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:notely_todo_list/app.dart';
import 'package:notely_todo_list/firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}
