part of 'edit_student_bloc.dart';

@freezed
class EditStudentEvent with _$EditStudentEvent {
  const factory EditStudentEvent.updateStudent({required Student student}) =
      _UpdateStudent;
}
