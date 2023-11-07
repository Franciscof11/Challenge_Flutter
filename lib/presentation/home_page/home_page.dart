import 'package:challenge_flutter/config/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: BottomNavigationBar(
          backgroundColor: Colors.grey[200],
          elevation: 0,
          iconSize: 25,
          fixedColor: mainBlue,
          unselectedItemColor: mainBlue,
          items: const [
            BottomNavigationBarItem(
              label: 'Menu',
              icon: Icon(
                Icons.menu,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Notificações',
              icon: Icon(
                Icons.notifications_outlined,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Perfil',
              icon: Icon(
                Icons.account_circle_outlined,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(28),
        ),
        label: Row(
          children: [
            const Icon(Icons.add),
            const SizedBox(width: 6),
            Text(
              'Cadastrar Aluno',
              style: GoogleFonts.rubik(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        backgroundColor: mainBlue,
        elevation: 0,
        onPressed: () {},
      ),
      backgroundColor: Colors.grey[200],
      body: const Column(
        children: [
          Text(
            'Alo',
          ),
        ],
      ),
    );
  }
}
