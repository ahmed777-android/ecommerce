// ignore_for_file: avoid_print

import 'package:ecommercev2/busnicess_logic/cubit/categories/categories_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatigoriesItems extends StatefulWidget {
  CatigoriesItems({Key? key}) : super(key: key);
  var id;

  @override
  State<CatigoriesItems> createState() => _CatigoriesItemsState();
}

class _CatigoriesItemsState extends State<CatigoriesItems> {
  CategoriesCubit? Cubit;
  @override
  void initState() {
    super.initState();
    //delay();
  }

  late Widget body;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocConsumer<CategoriesCubit, CategoriesState>(
        listener: (context, state) {
          if (state is CategoriesLoading) {
            print("---------------------------------------------------");

            //    delay();
          }
          if (state is CategoriesLoading) {
            print("---------------------------------------------------");
            body = bodyLoaded();
          }
          if (state is CategoriesErrorState) {
            
            print("---------------------------------------------------");
          }
        },
        builder: (context, state) {
          Cubit = CategoriesCubit.get(context);
          return Container();
        },
      ),
    );
  }

  void delay() async {
    await Future.delayed(const Duration(milliseconds: 1500));
  }

  Widget bodyLoaded() => GridView.builder(
        shrinkWrap: true,
        //  scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.all(8),
          width: 150,
          height: 240,
          child: Column(
            children: [
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.amberAccent,
                  ),
                  width: 200,
                  height: 130,
                  child: FadeInImage.assetNetwork(
                    fit: BoxFit.cover,
                    image: Cubit?.itemsData?.data?.items![index].image ?? "",
                    placeholder: 'assets/images/loading.gif',
                  )),
              const SizedBox(height: 10),
              Text(Cubit?.itemsData?.data?.items![index].price.toString()
                  as String),
              Text(Cubit?.itemsData?.data?.items![index].name.length > 20
                  ? Cubit?.itemsData?.data?.items![index].name.substring(0, 20)
                  : Cubit?.itemsData?.data?.items![index].name)
            ],
          ),
        ),
        itemCount: Cubit?.itemsData?.data?.items?.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 3,
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,
        ),
        physics: const ClampingScrollPhysics(),
      );
}
