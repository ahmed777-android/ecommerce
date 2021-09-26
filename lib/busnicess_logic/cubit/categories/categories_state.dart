part of 'categories_cubit.dart';

@immutable
abstract class CategoriesState {}

class CategoriesInitial extends CategoriesState {}

class CategoriesLoading extends CategoriesState {}

class CategoriesLoaded extends CategoriesState {}

class CategoriesErrorState extends CategoriesState {
  final String error;

  CategoriesErrorState(this.error);
}
