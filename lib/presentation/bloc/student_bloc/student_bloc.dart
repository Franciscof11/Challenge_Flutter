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
    on<_StudentEventDelete>(_deleteStudent);
    on<_StudentEventCreate>(_createStudent);
  }

  Future<void> _getAll(
    _StudentEventGetAll event,
    Emitter<StudentState> emit,
  ) async {
    try {
      emit(StudentState.loading());

      final students = await _repository.getAllStudents();

      await Future.delayed(const Duration(milliseconds: 350));

      emit(StudentState.data(students: students));
    } catch (e) {
      emit(StudentState.error(message: 'Erro ao buscar alunos!'));
    }
  }

  Future<void> _createStudent(
    _StudentEventCreate event,
    Emitter<StudentState> emit,
  ) async {
    try {
      await _repository.createStudent(event.student);

      final students = await _repository.getAllStudents();

      emit(StudentState.data(students: students));
    } catch (e) {
      emit(StudentState.error(message: 'Erro ao cadastrar aluno!'));

      emit(StudentState.loading());

      final students = await _repository.getAllStudents();

      await Future.delayed(const Duration(milliseconds: 350));

      emit(StudentState.data(students: students));
    }
  }

  Future<void> _deleteStudent(
    _StudentEventDelete event,
    Emitter<StudentState> emit,
  ) async {
    try {
      emit(StudentState.loading());

      await Future.delayed(const Duration(milliseconds: 350));

      await _repository.deleteStudent(event.student);

      final students = await _repository.getAllStudents();

      emit(StudentState.data(students: students));
    } catch (e) {
      emit(StudentState.error(message: 'Erro ao excluir aluno!'));

      emit(StudentState.loading());

      final students = await _repository.getAllStudents();

      await Future.delayed(const Duration(milliseconds: 350));

      emit(StudentState.data(students: students));
    }
  }
}
