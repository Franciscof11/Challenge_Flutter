part of 'student_list_bloc.dart';

@freezed
class StudentListState with _$StudentListState {
  const factory StudentListState.initial() = _StudentListInitialState;

  const factory StudentListState.data({required List<Student> students}) =
      _StudentListDataState;

  const factory StudentListState.loading() = _StudentListLoadingState;

  const factory StudentListState.error({required String message}) =
      _StudentListErrorState;
}
