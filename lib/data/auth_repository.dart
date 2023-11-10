// ignore_for_file: avoid_print

import 'package:dio/dio.dart';

class AuthRepository {
  Future<void> signIn(
    String email,
    String password,
  ) async {
    try {
      await Dio().post(
        'https://653c0826d5d6790f5ec7c664.mockapi.io/api/v1/login',
        data: {'email': email, 'password': password},
      );
    } catch (e) {
      // Tratar erros de requisição
      print('Erro na requisição: $e');
    }
  }
}
