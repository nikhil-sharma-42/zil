import 'package:flutter/material.dart';
import 'package:zil/screens/home_screen.dart';

import '../constants/constants_values.dart';

class MyRouters {
  static const String homeScreen = '/home';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeScreen:
        return MaterialPageRoute(builder: (context) {
          return HomeScreen();
        });

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(ConstantsValue.errorText),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: const Center(
          child: Text(
            ConstantsValue.pageNotFoundText,
          ),
        ),
      );
    });
  }
}
