import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:cinetopia/app/models/movie_model.dart';

import '../helpers/consts.dart';

abstract class SearchMoviesService {
  Future<List<MovieModel>> getMovies();
}

class SearchPopularMoviesService implements SearchMoviesService{
  final List<MovieModel> listmovies =  [];

  @override
  Future<List<MovieModel>> getMovies() async {
    try {
      final http.Response response = await http.get(
        Uri.parse(url), headers: header,

      );

      if (response.statusCode == 200) {
        for (dynamic movie in jsonDecode(response.body)["results"]) {
          listmovies.add(
              MovieModel.fromMap(movie)
          );
        }
        return listmovies;
      } else {
        throw Exception(listmovies);
      }
    } catch (e) {
      print(e);
      return listmovies;
    }
  }
}


