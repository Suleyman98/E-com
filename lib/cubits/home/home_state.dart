part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeSuccess extends HomeState {
  final List<String> categories;
  final List<ProductModel> products;
  HomeSuccess({
    required this.categories,
    required this.products,
  });
}

mixin HomeError implements HomeState {}
