import 'package:ecommercev2/busnicess_logic/cubit/categories/categories_cubit.dart';
import 'package:ecommercev2/busnicess_logic/cubit/home/home_cubit.dart';
import 'package:ecommercev2/constant/strings.dart';
import 'package:ecommercev2/data/models/item.dart';
import 'package:ecommercev2/data/repository/auth_repo.dart';
import 'package:ecommercev2/presentation/screens/Catigories/categories_details.dart';
import 'package:ecommercev2/presentation/screens/authenticate/first_screen.dart';
import 'package:ecommercev2/presentation/screens/authenticate/login/loginscreen.dart';
import 'package:ecommercev2/presentation/screens/authenticate/register/sugnup_screen.dart';
import 'package:ecommercev2/presentation/screens/detials/details.dart';
import 'package:ecommercev2/presentation/screens/home/home.dart';
import 'package:ecommercev2/presentation/screens/home/list_screen.dart';
import 'package:ecommercev2/presentation/screens/menu/menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  late AuthenticationRepo repo;

  AppRouter() {
    repo = AuthenticationRepo();
  }
  Route? generaterRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case firstScreen:
        return MaterialPageRoute(builder: (_) => const FirstScreen());
      case loginScreen:
        return MaterialPageRoute(builder: (_) => LoginScreen(repo: repo));
      case signupScreen:
        return MaterialPageRoute(
          builder: (_) => SignupScreen(
            repo: repo,
          ),
        );

      case categoriesScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            lazy: false,
            create: (context) =>
                CategoriesCubit()..getCategories(id: arguments),
            child: CatigoriesItems(),
          ),
        );
      case homeScreen:
        return MaterialPageRoute(builder: (_) => funhomeScreen());

      case menueScreen:
        return MaterialPageRoute(
          builder: (_) => const MenuScreen(),
        );
      case listScreen:
        return MaterialPageRoute(
          builder: (_) => ListOfItems(),
        );
      case detailScreen:
        final item = settings.arguments as Item;
        return MaterialPageRoute(
          builder: (_) => DetailScreen(
            item: item,
          ),
        );

      default:
    }
  }

  static Widget funhomeScreen() => BlocProvider(
        create: (context) => HomeCubit()
          ..getHome()
          ..getCategories()
          ..search(),
        child: HomeScreen(),
      );
}
