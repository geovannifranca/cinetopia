import 'package:cinetopia/app/viewModels/search_movies_viewmodel.dart';
import 'package:cinetopia/ui/widgets/move_card.dart';
import 'package:flutter/material.dart';

class SearchMovies extends StatelessWidget {
  final SearchMoviesViewmodel viewmodel = SearchMoviesViewmodel();

  SearchMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: viewmodel.getpopularmovies(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Image.asset(
                  "assets/images/popular.png",
                  height: 80,
                  width: 80,
                ),
              ),
              SliverToBoxAdapter(
                child: Text(
                  "Filmes populares",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 40)),
              SliverToBoxAdapter(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFFA368E5)),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 32)),
              SliverList.separated(
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 32),
                itemCount: viewmodel.moviesLists.length,
                itemBuilder: (context, index) =>
                    MoveCard(popularMovie: viewmodel.moviesLists[index]),
              ),
            ],
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
