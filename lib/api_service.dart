import 'dart:convert';
import 'package:http/http.dart' as http;
import 'book.dart';

class ApiService {
  final String apiUrl =
      "http://127.0.0.1:5000/books"; // Change to your local API URL

  Future<List<Book>> fetchBooks() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((book) => Book.fromJson(book)).toList();
    } else {
      throw Exception('Failed to load books');
    }
  }
}
