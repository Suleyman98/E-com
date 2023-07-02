import '../models/product_model.dart';

abstract class HomeContract {
  Future<List<String>> getCategories();
  Future<List<ProductModel>> getProducts();
}
