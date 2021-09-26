
  import 'package:ecommercev2/busnicess_logic/cubit/home/home_cubit.dart';
import 'package:ecommercev2/presentation/screens/home/widgets/item_search.dart';
import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

Widget searchBarUi(HomeCubit homeCubit) {
    return FloatingSearchBar(
      hint: 'Search.....',
      openAxisAlignment: 0.0,
      width: 600,
      axisAlignment: 0.0,
      scrollPadding: const EdgeInsets.only(top: 16, bottom: 20),
      elevation: 4.0,
      physics:const BouncingScrollPhysics(),
      onQueryChanged: (query) {
        //Your methods will be here
        homeCubit.search(text: query);
      },
      // showDrawerHamburger: false,
      transitionCurve: Curves.easeInOut,
      transitionDuration:const Duration(milliseconds: 500),
      transition: CircularFloatingSearchBarTransition(),
      debounceDelay:const Duration(milliseconds: 500),
      actions: [
        FloatingSearchBarAction(
          showIfOpened: false,
          child: CircularButton(
            icon:const Icon(Icons.search),
            onPressed: () {
              print('Places Pressed');
            },
          ),
        ),
        FloatingSearchBarAction.searchToClear(
          showIfClosed: false,
        ),
      ],
      builder: (context, transition) {
        return SizedBox(
          height: 500,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: itemBuilderForSearch(
                    image: homeCubit.searchData.data?.items?[index].image??
                       'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                    name: homeCubit.searchData.data?.items?[index].name ?? "",
                    price: homeCubit.searchData.data?.items?[index].price,
                    oldPrice: homeCubit.searchData.data?.items?[index].oldPrice ,
                  ));
            },
            itemCount: homeCubit.searchData.data?.items?.length,
          ),
        );
      },
    );
  }