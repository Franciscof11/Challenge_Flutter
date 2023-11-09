part of 'create_student_bloc.dart';

@freezed
class CreateStudentEvent with _$CreateStudentEvent {
  const factory CreateStudentEvent.createStudent({required Student student}) =
      _CreateStudent;
}
