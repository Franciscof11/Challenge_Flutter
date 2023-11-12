import 'package:bloc_test/bloc_test.dart';
import 'package:challenge_flutter/data/auth_repository.dart';
import 'package:challenge_flutter/data/student_repository.dart';
import 'package:challenge_flutter/domain/student_model.dart';
import 'package:challenge_flutter/presentation/auth_page/bloc/auth_bloc.dart';
import 'package:challenge_flutter/presentation/create_student_page/bloc/create_student_bloc.dart';
import 'package:challenge_flutter/presentation/edit_student_page/bloc/edit_student_bloc.dart';
import 'package:challenge_flutter/presentation/list_students_page/bloc/student_list_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AuthBloc', () {
    final repository = AuthRepository();

    blocTest<AuthBloc, AuthState>(
      'Emits [AuthState.loading, AuthState.loggedIn] states if test success.',
      build: () => AuthBloc(authRepository: repository),
      act: (bloc) => bloc.add(
        const AuthEvent.login(email: 'test@test.com', passowrd: '12345'),
      ),
      wait: const Duration(seconds: 3),
      expect: () => [
        const AuthState.loading(),
        const AuthState.loggedIn(),
      ],
    );
  });

  group('CreateStudentBloc', () {
    final repository = StudentRepository();

    blocTest<CreateStudentBloc, CreateStudentState>(
      'Emits [CreateStudentState.loading, CreateStudentState.sucess] states if test success.',
      build: () => CreateStudentBloc(repository: repository),
      act: (bloc) => bloc.add(
        CreateStudentEvent.createStudent(student: Student()),
      ),
      wait: const Duration(seconds: 3),
      expect: () => [
        const CreateStudentState.loading(),
        const CreateStudentState.sucess(
            message: 'Aluno cadastrado com sucesso!'),
      ],
    );
  });

  group('StudentListBloc', () {
    final repository = StudentRepository();

    blocTest<StudentListBloc, StudentListState>(
      'Emits [StudentListState.error] states if test success, because the student does not exist.',
      build: () => StudentListBloc(repository: repository),
      act: (bloc) => bloc.add(
        StudentListEvent.deleteStudent(student: Student()),
      ),
      wait: const Duration(seconds: 3),
      expect: () => [
        const StudentListState.error(message: 'Erro ao deletar aluno!'),
      ],
    );
  });

  group('EditStudentBloc', () {
    final repository = StudentRepository();

    blocTest<EditStudentBloc, EditStudentState>(
      'Emits [EditStudentState.error] states if test success, because the student does not exist.',
      build: () => EditStudentBloc(repository: repository),
      act: (bloc) => bloc.add(
        EditStudentEvent.updateStudent(student: Student()),
      ),
      wait: const Duration(seconds: 3),
      expect: () => [
        const EditStudentState.loading(),
        const EditStudentState.error(message: 'Erro ao editar aluno!'),
      ],
    );
  });
}
