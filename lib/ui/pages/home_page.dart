import 'package:cinetopia/ui/pages/dashboard.dart';
import 'package:cinetopia/ui/pages/search_movies.dart';
import 'package:cinetopia/ui/widgets/buttons_widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Ink(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[Color(0XFF000000), Color(0XFF1D0E44)],
            begin: Alignment.topCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: Image.asset("assets/images/logo.png"),
                ),
                Image.asset("assets/images/splash.png"),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: Text(
                    "O lugar ideal para burcar, salvar e organizar seus filmes favoritos!",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                ),
                PrimaryButtonWidget(
                  text: "Quero começar!",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dashboard()),
                  ),
                  icon: Icons.arrow_forward,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
