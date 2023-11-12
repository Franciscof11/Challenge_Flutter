import 'package:challenge_flutter/data/auth_repository.dart';
import 'package:challenge_flutter/presentation/auth_page/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../config/constant_colors.dart';
import '../widgets/custom_text_form_field.dart';
import '../widgets/remove_glow_effect.dart';
import '../widgets/toast.dart';

class AuthPage extends StatelessWidget {
  AuthPage({super.key});

  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final authRepository = AuthRepository();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: BlocListener<AuthBloc, AuthState>(
        listenWhen: (previous, current) {
          return current.maybeWhen(
            loading: () => true,
            loggedIn: () => true,
            error: (message) => true,
            orElse: () => false,
          );
        },
        listener: (context, state) {
          state.whenOrNull(
            loading: () => showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(),
              ),
            ),
            loggedIn: () {
              Navigator.pushNamed(context, '/ListStudentsPage');
            },
            error: (message) {
              showToast(
                message: message,
                color: Colors.red[400]!,
                context: context,
              );
            },
          );
        },
        child: RemoveGlowEffect(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    const SizedBox(height: 60),
                    //
                    Image.asset('assets/icon.png'),
                    //
                    const SizedBox(height: 60),
                    CustomTextFormField(
                      key: const Key('emailField'),
                      label: 'Email',
                      controller: emailController,
                      type: FormTypes.email,
                    ),
                    const SizedBox(height: 35),
                    CustomTextFormField(
                      key: const Key('passwordField'),
                      label: 'Password',
                      isSecret: true,
                      controller: passwordController,
                      type: FormTypes.password,
                    ),
                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (dialogContext) => AlertDialog(
                              title: Text(
                                'Funcionalidade em desenvolvimento!',
                                style: GoogleFonts.rubik(
                                  color: mainBlue,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    'Ok',
                                    style: GoogleFonts.rubik(
                                      color: mainBlue,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        child: Text(
                          "Esqueceu a senha?",
                          style: GoogleFonts.rubik(
                            color: Colors.grey[700],
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    ElevatedButton(
                      key: const Key('loginButton'),
                      onPressed: () async {
                        final formValid =
                            formKey.currentState?.validate() ?? false;

                        if (formValid) {
                          context.read<AuthBloc>().add(AuthEvent.login(
                                email: emailController.text,
                                passowrd: passwordController.text,
                              ));
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 80),
                        backgroundColor: mainBlue,
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Text(
                        'Entrar',
                        style: GoogleFonts.rubik(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
