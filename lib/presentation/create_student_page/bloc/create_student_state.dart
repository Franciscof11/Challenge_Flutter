part of 'create_student_bloc.dart';

@freezed
class CreateStudentState with _$CreateStudentState {
  const factory CreateStudentState.initial() = _Initial;

  const factory CreateStudentState.loading() = _Loading;

  const factory CreateStudentState.sucess({required String message}) = _Sucess;

  const factory CreateStudentState.error({required String message}) = _Error;
}
