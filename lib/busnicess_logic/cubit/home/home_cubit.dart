// ignore_for_file: avoid_print

import 'package:bloc/bloc.dart';
import 'package:ecommercev2/constant/strings.dart';
import 'package:ecommercev2/data/models/home_response.dart';
import 'package:ecommercev2/data/models/response.dart';
import 'package:ecommercev2/data/services/dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  SearchData searchData =
      SearchData(status: true, message: 'initial', data: null);
  ResponseHome responseHome = ResponseHome(
      status: true,
      message: "initial",
      data: HomeData(ad: '', banners: [], products: []));
  CategoriesResponse categoriesResponse =
      CategoriesResponse(status: true, message: "initial", data: null);
  static HomeCubit get(context) => BlocProvider.of<HomeCubit>(context);

  void search({String text = ""}) {
    DioHelper.postData(url: SEARCH, data: {'text': text}).then((value) {
      print(value);
      searchData = SearchData.fromJson(value.data);
      emit(SearchItemLoaded());
    }).catchError((error) {
      print(error.toString());
    });
  }

  void getHome() async {
    try {
      emit(DataLoading());
      var respone = await DioHelper.getData(url: HOME);
      responseHome = ResponseHome.fromJson(respone.data);
      emit(SearchItemLoaded());
    } catch (e) {
      print(e.toString());
    }
  }

  void getCategories() async {
    try {
      emit(DataLoading());
      var respone = await DioHelper.getData(url: CATEGORY);
      categoriesResponse =CategoriesResponse.fromJson(respone.data);
      emit(SearchItemLoaded());
    } catch (e) {
      print(e.toString());
    }
  }
}
