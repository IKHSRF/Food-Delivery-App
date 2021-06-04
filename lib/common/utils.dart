import 'package:flutter_modular/flutter_modular.dart';

List<String> menuItem = ['Profile', 'Cart', 'About'];
List<String> menuIcon = [
  'assets/icons/user.svg',
  'assets/icons/cart.svg',
  'assets/icons/heart.svg'
];
int selectedMenuItem = 0;

setPageTitle() {
  switch (selectedMenuItem) {
    case 0:
      Modular.to.pushNamed('/profile');
      break;
    case 1:
      Modular.to.pushNamed('/cart');
      break;
    case 2:
      Modular.to.pushNamed('/about');
      break;
  }
}
