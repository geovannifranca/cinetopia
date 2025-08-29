import 'package:cinetopia/ui/pages/releases.dart';
import 'package:cinetopia/ui/pages/search_movies.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
   int _currentIndex = 0;
  final List<Widget> _pages = [
    SearchMovies(),
    Releases(),
  ];

  void updateIndex (int index){
    setState(() {
      _currentIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(16, 54, 16, 0),
          child: _pages.elementAt(_currentIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (value) => updateIndex(value),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.movie), label: "Filmes"),
            BottomNavigationBarItem(
              icon: Icon(Icons.today),
              label: "Lançamentos",
            ),
          ],
        ),
      ),
    );
  }
}
