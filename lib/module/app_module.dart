import 'package:aplikasi1/pages/pages.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => GetStartedPage()),
    ChildRoute('/home', child: (_, __) => HomePage()),
    ChildRoute('/profile', child: (_, __) => ProfilePage()),
    ChildRoute(
      '/detail',
      child: (_, args) => DetailPage(
        foods: args.data,
      ),
    ),
    ChildRoute('/about', child: (_, args) => AboutPage()),
    ChildRoute('/cart', child: (_, __) => CartPage()),
  ];
}
