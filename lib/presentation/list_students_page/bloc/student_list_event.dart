part of 'student_list_bloc.dart';

@freezed
class StudentListEvent with _$StudentListEvent {
  const factory StudentListEvent.getAllStudents() = _GetAllStudents;
}
