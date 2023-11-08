import 'package:challenge_flutter/data/student_repository.dart';
import 'package:challenge_flutter/presentation/bloc/student_bloc/student_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../presentation/create_student_page/create_student_page.dart';
import '../presentation/home_page/home_page.dart';
import '../presentation/sign_in_page/sign_in_page.dart';

final routes = {
  '/SignInPage': (context) => SignInPage(),
  '/HomePage': (context) => BlocProvider(
        create: (context) => StudentBloc(
          repository: context.read<StudentRepository>(),
        )..add(StudentEvent.getAllStudents()),
        child: const HomePage(),
      ),
  '/CreateStudentPage': (context) => CreateStudentPage(),
};
