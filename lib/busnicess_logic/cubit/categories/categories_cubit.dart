import 'package:bloc/bloc.dart';
import 'package:ecommercev2/constant/strings.dart';
import 'package:ecommercev2/data/models/response.dart';
import 'package:ecommercev2/data/services/dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit() : super(CategoriesInitial());

  static CategoriesCubit get(context) => BlocProvider.of<CategoriesCubit>(context);

  SearchData? itemsData;
  void getCategories({required var id}) async {
    try {
      emit(CategoriesLoading());
      var response =
          await DioHelper.getData(url: CATEGORY + '/' + id.toString());

      itemsData = SearchData.fromJson(response.data);
      emit(CategoriesLoaded());
    } catch (e) {
      print(itemsData?.message ?? "some thing is wrong ");
      emit(CategoriesErrorState(e.toString()));
    }
  }
}
