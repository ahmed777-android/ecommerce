// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:ecommercev2/constant/strings.dart';
import 'package:ecommercev2/data/models/categories.dart';
import 'package:ecommercev2/data/models/item.dart';
import 'package:ecommercev2/presentation/screens/home/widgets/item_list.dart';
import 'package:ecommercev2/presentation/screens/home/widgets/list_categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommercev2/busnicess_logic/cubit/home/home_cubit.dart';
import 'package:ecommercev2/presentation/screens/home/widgets/item_banner.dart';
import 'package:ecommercev2/presentation/widgets/search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeCubit homeCubit;

  @override
  Widget build(BuildContext context) {
    homeCubit = HomeCubit.get(context);
    listItems = homeCubit.responseHome.data?.products;
    print('list sizw -------------'+listItems!.length.toString());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          actions: [
            IconButton(
              icon: const Icon(Icons.menu, color: Colors.black),
              onPressed: () {
                Navigator.pushNamed(context, menueScreen);
              },
            ),
            const Expanded(child: SizedBox()),
            IconButton(
              icon:
                  const Icon(Icons.shopping_bag_outlined, color: Colors.black),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.notifications_none_outlined,
                  color: Colors.black),
              onPressed: () {},
            ),
          ],
        ),
        body: BlocConsumer<HomeCubit, HomeState>(
          listener: (context, state) {
            if (state is DataLoading) {
              print('-------------------------------------------------');
            }
            if (state is SearchErrorState) {
              print(
                  '-----------errrrrrrrrrrrrrrrror--------------------------------------');
            }
          },
          builder: (context, state) {
            return Container(
              color: Colors.white,
              child: Stack(
                children: [
                  Positioned(
                      left: 0,
                      right: 0,
                      top: 60,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 10,
                          left: 10,
                        ),
                        child: Column(
                          children: [
                            slider(items: homeCubit.responseHome.data?.banners),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Categories',
                                  style: TextStyle(
                                    fontSize: 21,
                                    color: Color(0xff707070),
                                  ),
                                ),
                                // Text(
                                //   'See all',
                                //   style: TextStyle(
                                //     fontSize: 14,
                                //     color: Color(0xff707070),
                                //   ),
                                // )
                              ],
                            ),
                            ListCategories(
                                data: homeCubit.categoriesResponse.data?.data),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Items',
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Color(0xff707070),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(context, listScreen);
                                  },
                                  child: Text(
                                    'See all',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff707070),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            buildList(
                                items: homeCubit.responseHome.data?.products),
                          ],
                        ),
                      )),
                  searchBarUi(homeCubit),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
