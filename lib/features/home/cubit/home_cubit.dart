import 'package:bloc/bloc.dart';

import '../../../data/services/firestore/firestore_service.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState());

  Future<void> getTodos() async {
    FirestoreService()
        .getItemsStream()
        .listen((todos) => emit(state.copyWith(todos: todos)));
  }
}
