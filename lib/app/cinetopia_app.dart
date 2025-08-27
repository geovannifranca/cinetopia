import 'package:cinetopia/ui/pages/home_page.dart';
import 'package:flutter/material.dart';

class CinetopiaApp extends StatelessWidget {
  const CinetopiaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
        colorSchemeSeed: Colors.deepPurple,
      ),
      home: SafeArea(
          child: HomePage(),

      )
    );
  }
}
