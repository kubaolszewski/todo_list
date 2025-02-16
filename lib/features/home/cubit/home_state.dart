import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/todos/todos_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<TodosModel> todos,
  }) = _HomeState;
}
