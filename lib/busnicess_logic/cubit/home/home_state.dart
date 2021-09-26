part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class DataLoading extends HomeState {}

class SearchItemLoaded extends HomeState {
  // final SearchData searchData;
  // SearchItemLoaded({required this.searchData});
}

class SearchErrorState extends HomeState {
  final String error;
  SearchErrorState(this.error);
}

class SearchQueryChange extends HomeState {}
