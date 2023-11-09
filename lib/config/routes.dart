import 'package:challenge_flutter/data/student_repository.dart';
import 'package:challenge_flutter/domain/student_model.dart';
import 'package:challenge_flutter/presentation/create_student_page/bloc/create_student_bloc.dart';
import 'package:challenge_flutter/presentation/list_students_page/bloc/student_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../presentation/create_student_page/create_student_page.dart';
import '../presentation/edit_student_page/bloc/edit_student_bloc.dart';
import '../presentation/edit_student_page/edit_student_page.dart';
import '../presentation/list_students_page/list_students_page.dart';
import '../presentation/sign_in_page/sign_in_page.dart';

final routes = {
  '/SignInPage': (context) => SignInPage(),
  //
  //
  '/ListStudentsPage': (context) => BlocProvider(
        create: (context) => StudentListBloc(
          repository: context.read<StudentRepository>(),
        )..add(const StudentListEvent.getAllStudents()),
        child: const ListStudentsPage(),
      ),
  //
  //
  '/CreateStudentPage': (context) => BlocProvider(
        create: (context) => CreateStudentBloc(
          repository: context.read<StudentRepository>(),
        ),
        child: const CreateStudentPage(),
      ),
  //
  //
  '/EditStudentPage': (context) {
    final student = ModalRoute.of(context)!.settings.arguments as Student;

    return BlocProvider(
      create: (context) => EditStudentBloc(
        repository: context.read<StudentRepository>(),
      ),
      child: EditStudentPage(
        student: student,
      ),
    );
  }
};
