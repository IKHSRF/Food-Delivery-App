part of 'pages.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Modular.to.pushNamed('/home');
                      },
                    ),
                    SizedBox(width: screenSize.width * 0.22),
                    Text(
                      'Orders',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
                Container(
                  height: screenSize.height,
                  child: ListView.builder(
                    itemCount: carts.length,
                    itemBuilder: (context, index) {
                      return MenuCard(
                        screenSize: screenSize,
                        menuName: carts[index].menuName,
                        price: carts[index].price.toString(),
                        imagePath: carts[index].picture,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
