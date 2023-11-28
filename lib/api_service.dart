import 'dart:convert';
import 'package:http/http.dart' as http;
import 'products_model.dart';

class ApiService {
  final String apiUrl;

  ApiService(this.apiUrl);

  Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body)['products'];
      return data.map((json) => Product.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }
}
