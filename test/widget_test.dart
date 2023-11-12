import 'package:challenge_flutter/data/auth_repository.dart';
import 'package:challenge_flutter/presentation/auth_page/auth_page.dart';
import 'package:challenge_flutter/presentation/auth_page/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Auth Page Widget Tests', () {
    testWidgets(
      'Login Fields',
      (widgetTester) async {
        final emailField = find.byKey(const ValueKey('emailField'));

        final passwordField = find.byKey(const ValueKey('passwordField'));

        final repository = AuthRepository();

        final bloc = AuthBloc(authRepository: repository);

        await widgetTester.pumpWidget(MaterialApp(
            home: BlocProvider(
          create: (context) => bloc,
          child: AuthPage(),
        )));

        await widgetTester.enterText(emailField, 'test@test.com');

        await widgetTester.enterText(passwordField, '123456');

        await widgetTester.pump();

        expect(find.text('test@test.com'), findsOneWidget);

        expect(find.text('123456'), findsOneWidget);
      },
    );

    testWidgets(
      'Login Button',
      (widgetTester) async {
        final loginButton = find.byKey(const ValueKey('loginButton'));

        final repository = AuthRepository();

        final bloc = AuthBloc(authRepository: repository);

        await widgetTester.pumpWidget(MaterialApp(
            home: BlocProvider(
          create: (context) => bloc,
          child: AuthPage(),
        )));

        await widgetTester.tap(loginButton);

        await widgetTester.pump();

        expect(find.byKey(const Key('loginButton')), findsOneWidget);
      },
    );
  });
}
