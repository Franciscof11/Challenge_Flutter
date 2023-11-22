import 'package:challenge_flutter/config/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data/student_repository.dart';

void main() {
  runApp(
    const MainApp(),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => StudentRepository(),
      child: MaterialApp(
        theme: ThemeData(colorScheme: const ColorScheme.light()),
        debugShowCheckedModeBanner: false,
        initialRoute: '/SignInPage',
        routes: routes,
      ),
    );
  }
}
