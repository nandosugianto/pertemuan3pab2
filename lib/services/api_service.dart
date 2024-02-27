import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = "https://api.themoviedb.org/3";
  static const String apikey = 'e390b828bae19e6ecea379fc2c4ab627';

  Future<List<Map<String, dynamic>>> getAllMovie() async {
    final response = await http.get(Uri.parse("$baseUrl/movie/now_playing?api_key=$apikey"));
    final data = json.decode(response.body);
    return List<Map<String, dynamic>>.from(data['result']);
  }

  Future<List<Map<String, dynamic>>> getTrendingMovie() async {
    final response = await http.get(Uri.parse("$baseUrl/movie/trending/movie/week?api_key=$apikey"));
    final data = json.decode(response.body);
    return List<Map<String, dynamic>>.from(data['result']);
  }

   Future<List<Map<String, dynamic>>> getPopularMovie() async {
    final response = await http
        .get(Uri.parse("$baseUrl/movie/popular?api_key=$apikey"));
    final data = json.decode(response.body);
    return List<Map<String, dynamic>>.from(data['result']);
  }
}
