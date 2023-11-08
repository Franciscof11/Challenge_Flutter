import 'package:bloc/bloc.dart';
import 'package:challenge_flutter/data/student_repository.dart';
import 'package:challenge_flutter/domain/student_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_bloc.freezed.dart';
part 'student_event.dart';
part 'student_state.dart';

class StudentBloc extends Bloc<StudentEvent, StudentState> {
  final StudentRepository _repository;
  StudentBloc({required StudentRepository repository})
      : _repository = repository,
        super(StudentState.initial()) {
    on<_StudentEventGetAll>(_getAll);
  }

  Future<void> _getAll(
    _StudentEventGetAll event,
    Emitter<StudentState> emit,
  ) async {
    try {
      final students = await _repository.getAllStudents();

      await Future.delayed(const Duration(seconds: 2));

      emit(StudentState.data(students: students));
    } catch (e) {
      emit(StudentState.error(message: 'Erro ao buscar contatos!'));
    }
  }
}
