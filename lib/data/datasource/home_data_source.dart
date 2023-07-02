import 'dart:convert';

import 'package:http/http.dart';

import '../models/product_model.dart';

class HomeDataSource {
  Future<List<String>> getCategories() async {
    const String url = 'https://fakestoreapi.com/products/categories';
    final uri = Uri.parse(url);

    final Response response = await get(uri);

    final List<dynamic> responseData = jsonDecode(response.body);
    final List<String> categoryList =
        responseData.map((e) => e.toString()).toList();
    if (response.statusCode == 200) {
      return categoryList;
    } else {
      throw Exception();
    }
  }

  Future<List<ProductModel>> getProducts() async {
    const String url = 'https://fakestoreapi.com/products';
    final uri = Uri.parse(url);

    final Response response = await get(uri);
    final List<dynamic> responseData = jsonDecode(response.body);

    final List<ProductModel> products =
        responseData.map((e) => ProductModel.fromJson(e)).toList();

    if (response.statusCode == 200) {
      return products;
    } else {
      throw Exception();
    }
  }
}
