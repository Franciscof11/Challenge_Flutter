import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:challenge_flutter/data/auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;

  AuthBloc({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(const AuthState.initial()) {
    on<_Login>(_login);
  }

  Future<void> _login(
    _Login event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(const AuthState.loading());

      await Future.delayed(const Duration(milliseconds: 500));

      await _authRepository.signIn(event.email, event.passowrd);

      emit(const AuthState.loggedIn());
    } catch (e) {
      emit(const AuthState.error(message: 'Erro ao fazer login!'));
    }
  }
}
