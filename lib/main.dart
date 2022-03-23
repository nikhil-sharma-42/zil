import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zil/provider/app_provider.dart';
import 'package:zil/screens/checkout.dart';
import 'package:zil/screens/landing_screen.dart';
import 'package:zil/screens/product_page.dart';
import 'package:zil/theme/theme_data.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ZIL',
      theme: zillThemeData(),
      home: MultiProvider(providers: [
        ChangeNotifierProvider<AppProvider>.value(
          value: AppProvider(),
        ),
      ], child: ProductPage()),
    );
  }
}
