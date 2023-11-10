import 'package:challenge_flutter/data/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../config/constant_colors.dart';
import '../widgets/custom_text_form_field.dart';
import '../widgets/remove_glow_effect.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});

  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final authRepository = AuthRepository();
  @override
  Widget build(BuildContext context) {
    double widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: RemoveGlowEffect(
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
                    label: 'Email',
                    controller: emailController,
                    type: FormTypes.email,
                  ),
                  const SizedBox(height: 35),
                  CustomTextFormField(
                    label: 'Password',
                    isSecret: true,
                    controller: passwordController,
                    type: FormTypes.password,
                  ),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Esqueceu a senha?",
                      style: GoogleFonts.rubik(
                        color: Colors.grey[700],
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: () async {
                      final formValid =
                          formKey.currentState?.validate() ?? false;

                      if (formValid) {
                        Navigator.pushNamed(context, '/ListStudentsPage');
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
    );
  }
}
