<<<<<<< HEAD
import 'dart:io';
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/movie.dart';

class HttpService {
  final String apiKey = "273d6920f2ab73082f4a4ffa792415d9";
  final String baseUrl = "https://api.themoviedb.org/3/movie/popular?api_key=";

  Future<List?> getPopularMovies() async {
    final String uri = baseUrl + apiKey;

    http.Response result = await http.get(Uri.parse(uri));

    if (result.statusCode == HttpStatus.ok) {
      print("Sukses");
      final jsonResponse = json.decode(result.body);
      final moviesMap = jsonResponse['results'];
      List movies = moviesMap.map((i) => Movie.fromJson(i)).toList();
      return movies;
    } else {
      print("Fail");
      return null;
    }
  }
}
=======
import 'dart:html';

import 'package:http/http.dart' as http;

class HttpService {
  final String apiKey = '273d6920f2ab73082f4a4ffa792415d9';
  final String baseUrl =
      'https://api.themoviedb.org/3/movie/550?api_key=273d6920f2ab73082f4a4ffa792415d9';

  Future<String> getPopularMovies() async {
    final String uri = baseUrl + apiKey;

    http.Response result = await http.get(Uri.parse(uri));
    if (result.statusCode == HttpStatus.ok) {
      print("Sukses");
      String response = result.body;
      return response;
    } else {
      print("Fail");
      return null;
    }
  }
}
>>>>>>> 77bbb8d7bfe5370fe40dfd05b0a76c9a8e2558dc
