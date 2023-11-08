part of 'student_bloc.dart';

@freezed
class StudentEvent with _$StudentEvent {
  factory StudentEvent.getAllStudents() = _StudentEventGetAll;
  factory StudentEvent.delete({required Student student}) = _StudentEventDelete;
}
