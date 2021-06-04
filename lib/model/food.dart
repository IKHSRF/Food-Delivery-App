import 'package:flutter_modular/flutter_modular.dart';

class Food {
  final String menuName;
  final int price;
  final String picture;
  final Function() itemPressed;

  Food({
    required this.menuName,
    required this.price,
    required this.picture,
    required this.itemPressed,
  });
}

List<Food> foods = [
  Food(
    menuName: "Bakso",
    price: 20000,
    picture: "assets/images/bakso.jpg",
    itemPressed: () {
      Modular.to.pushNamed(
        '/detail',
        arguments: Food(
          itemPressed: () {},
          menuName: "Bakso",
          price: 20000,
          picture: "assets/images/bakso.jpg",
        ),
      );
    },
  ),
  Food(
    menuName: "Batagor",
    price: 20000,
    picture: "assets/images/batagor.jpg",
    itemPressed: () {
      Modular.to.pushNamed(
        '/detail',
        arguments: Food(
          itemPressed: () {},
          menuName: "Batagor",
          price: 20000,
          picture: "assets/images/batagor.jpg",
        ),
      );
    },
  ),
  Food(
    menuName: "Pempek",
    price: 20000,
    picture: "assets/images/pempek.jpg",
    itemPressed: () {
      Modular.to.pushNamed(
        '/detail',
        arguments: Food(
          itemPressed: () {},
          menuName: "Pempek",
          price: 20000,
          picture: "assets/images/pempek.jpg",
        ),
      );
    },
  ),
];
