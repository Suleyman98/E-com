import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/product_model.dart';
import '../../data/repositories.dart/home_repository.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  void getDatas() async {
    try {
      emit(HomeInitial());
      List<String> categories = await HomeRepository().getCategories();
      List<ProductModel> products = await HomeRepository().getProducts();
      emit(HomeSuccess(categories: categories, products: products));
      print(categories);
    } catch (e) {
      print(e.toString());
    }
  }
}
