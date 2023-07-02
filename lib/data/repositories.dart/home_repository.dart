import 'package:shopping_app/data/datasource/home_data_source.dart';
import 'package:shopping_app/data/models/product_model.dart';

import '../contracts/home_contracts.dart';

class HomeRepository implements HomeContract {
  @override
  Future<List<String>> getCategories() {
    return HomeDataSource().getCategories();
  }

  @override
  Future<List<ProductModel>> getProducts() {
    return HomeDataSource().getProducts();
  }
}
