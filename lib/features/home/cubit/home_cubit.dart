import 'package:bloc/bloc.dart';

import '../../../data/repositories/firestore_repository/firestore_repository.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState());

  final _firestoreRepository = FirestoreRepository();

  Future<void> getTodos() async {
    _firestoreRepository
        .getItemsStream()
        .listen((todos) => emit(state.copyWith(todos: todos)));
  }
}
