part of 'edit_student_bloc.dart';

@freezed
class EditStudentState with _$EditStudentState {
  const factory EditStudentState.initial() = _Initial;

  const factory EditStudentState.loading() = _Loading;

  const factory EditStudentState.sucess({required String message}) = _Sucess;

  const factory EditStudentState.error({required String message}) = _Error;
}
