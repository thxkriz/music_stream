import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:uji_coba/dto/news.dart';
import 'package:uji_coba/endpoints/endpoints.dart';

class Dataservis {
  static Future<List<news>> fetchNews() async {
    final response = await http.get(Uri.parse(EndPoints.news));
    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = jsonDecode(response.body);
      return jsonResponse.map((item) => news.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load news');
}
}
}