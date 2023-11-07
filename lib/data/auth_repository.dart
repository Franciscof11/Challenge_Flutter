// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class AuthRepository {
  Future<bool> signIn(
      String email, String password, BuildContext context) async {
    try {
      final response = await Dio().get(
        'https://653c0826d5d6790f5ec7c664.mockapi.io/api/v1/login',
        data: {'email': email, 'password': password},
      );

      if (response.statusCode == 200) {
        return true;
      } else {
        // Tratar outros códigos de status, se necessário
        print('Erro no login: ${response.statusCode}');
        return false;
      }
    } catch (e) {
      // Tratar erros de requisição
      print('Erro na requisição: $e');
    }
    return false;
  }
}
