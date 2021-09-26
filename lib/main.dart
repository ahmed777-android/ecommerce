import 'package:ecommercev2/constant/strings.dart';
import 'package:ecommercev2/data/services/dio_helper.dart';
import 'package:ecommercev2/data/services/shared_preferences.dart';
import 'package:ecommercev2/presentation/screens/authenticate/first_screen.dart';
import 'package:ecommercev2/utils/app_router.dart';
import 'package:ecommercev2/utils/bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  Bloc.observer = AppBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  //===============================================================
  await CacheHelper.init();
  //===============================================================
  Widget widget;
  token = CacheHelper.getString(key: TOKEN) ?? "";
  //=========================

  if (token.isNotEmpty) {
    widget = AppRouter.funhomeScreen();
  } else {
    widget = FirstScreen();
  }
  runApp(MyApp(
    startWidget: widget,
  ));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key, required this.startWidget}) : super(key: key);
  final Widget startWidget;
  final AppRouter appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        
      ),
      initialRoute: firstScreen,
      onGenerateRoute: appRouter.generaterRoute,
      home: startWidget,
    );
  }
}
