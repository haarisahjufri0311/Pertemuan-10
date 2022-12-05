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
