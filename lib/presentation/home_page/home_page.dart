import 'package:challenge_flutter/config/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.6,
        shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 50),
              Row(
                children: [
                  const Icon(
                    Icons.home_rounded,
                    color: mainBlue,
                    size: 30,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Página Inicial',
                    style: GoogleFonts.rubik(
                      color: mainBlue,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              SizedBox(
                child: Divider(
                  color: Colors.grey[600],
                  thickness: 0.5,
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  const Icon(
                    Icons.add,
                    color: mainBlue,
                    size: 30,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Cadastrar Aluno',
                    style: GoogleFonts.rubik(
                      color: mainBlue,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              SizedBox(
                child: Divider(
                  color: Colors.grey[600],
                  thickness: 0.5,
                ),
              ),
            ],
          ),
        ),
      ),
      key: drawerKey,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: BottomNavigationBar(
          backgroundColor: Colors.grey[200],
          elevation: 0,
          iconSize: 25,
          fixedColor: mainBlue,
          unselectedItemColor: mainBlue,
          items: [
            BottomNavigationBarItem(
              label: 'Menu',
              icon: GestureDetector(
                onTap: () => drawerKey.currentState?.openDrawer(),
                child: const Icon(
                  Icons.menu,
                ),
              ),
            ),
            const BottomNavigationBarItem(
              label: 'Notificações',
              icon: Icon(
                Icons.notifications_outlined,
              ),
            ),
            const BottomNavigationBarItem(
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
                fontSize: 16,
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
