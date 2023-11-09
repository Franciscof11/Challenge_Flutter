part of 'student_list_bloc.dart';

@freezed
class StudentListEvent with _$StudentListEvent {
  const factory StudentListEvent.getAllStudents() = _GetAllStudents;
  const factory StudentListEvent.deleteStudent({required Student student}) =
      _DeleteStudent;
}
