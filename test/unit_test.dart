import 'package:bloc_test/bloc_test.dart';
import 'package:challenge_flutter/data/auth_repository.dart';
import 'package:challenge_flutter/presentation/auth_page/bloc/auth_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CounterBloc', () {
    final repository = AuthRepository();

    blocTest<AuthBloc, AuthState>(
      'emits [CounterInitial, CounterUpdated] when IncrementEvent is added',
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
}
