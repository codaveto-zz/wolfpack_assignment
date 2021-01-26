import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:wolfpack_assign/nav/router.dart' as router;
import 'package:wolfpack_assign/util/config/theme_config.dart';
import 'package:wolfpack_assign/util/injection/locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  final _navKey = GlobalKey<NavigatorState>();

  MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        onGenerateRoute: router.Router().onGenerateRoute,
        navigatorKey: _navKey,
        title: 'Wolfpack Assignment',
        enableLog: false,
        debugShowCheckedModeBanner: false,
        theme: buildThemeData(context),
        builder: (context, child) {
          return ExtendedNavigator(
            initialRoute: router.Routes.startupView,
            navigatorKey: _navKey,
            router: router.Router(),
          );
        });
  }
}
