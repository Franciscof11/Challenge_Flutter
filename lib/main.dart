import 'package:challenge_flutter/config/routes.dart';
import 'package:challenge_flutter/presentation/bloc/student_bloc/student_bloc.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data/student_repository.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true, // obs: production? false : true
      builder: (context) => const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => StudentRepository(),
      child: BlocProvider(
        create: (context) =>
            StudentBloc(repository: context.read<StudentRepository>()),
        child: MaterialApp(
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          debugShowCheckedModeBanner: false,
          initialRoute: '/HomePage',
          routes: routes,
        ),
      ),
    );
  }
}
