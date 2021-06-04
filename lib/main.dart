import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'module/app_module.dart';

void main() {
  runApp(
    ModularApp(
      module: AppModule(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'SF Pro Rounded',
      ),
      initialRoute: '/',
    ).modular();
  }
}
