import 'package:cinetopia/app/models/movie_model.dart';
import 'package:cinetopia/app/services/search_movies_service.dart';

class SearchMoviesViewmodel {
  List<MovieModel> _moviesList = [];

  Future<List<MovieModel>> getpopularmovies() async {
    final SearchMoviesService servce = SearchPopularMoviesService();
    _moviesList = await servce.getMovies();
    return _moviesList;
  }
  List<MovieModel> get moviesLists => _moviesList;
}
