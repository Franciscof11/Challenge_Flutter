part of 'student_bloc.dart';

@freezed
class StudentState with _$StudentState {
  factory StudentState.initial() = _StudentInitialState;

  factory StudentState.data({required List<Student> students}) =
      _StudentStateData;

  factory StudentState.error({required String message}) =
      _StudentStateErrorState;

  factory StudentState.loading() = _StudentStateLoadingState;
}
