part of 'pages.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    Key? key,
    required this.foods,
  }) : super(key: key);

  final Food foods;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: screenSize.width,
              height: screenSize.height * 0.4,
              child: Image.asset(
                foods.picture,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: screenSize.height * 0.4),
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text(
                    foods.menuName,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 10.0),
                  child: Text(
                    'Rp ${foods.price.toString()}',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: orangeColor,
                    ),
                  ),
                ),
                InformationDetail(
                  screenSize: screenSize,
                  infoTitle: 'Delivery Info',
                  infoContent:
                      'Delivered between monday and thursday from 8pm to 09:30 pm',
                ),
                InformationDetail(
                  screenSize: screenSize,
                  infoTitle: 'Return policy',
                  infoContent:
                      'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.',
                ),
                Padding(
                  padding: EdgeInsets.all(40.0),
                  child: OrangeButton(
                    screenSize: screenSize,
                    buttonText: 'Add to Cart',
                    buttonPress: () {
                      carts.add(
                        Cart(
                          menuName: foods.menuName,
                          price: foods.price,
                          picture: foods.picture,
                        ),
                      );
                      Modular.to.navigate('/home');
                    },
                  ),
                ),
              ],
            ),
            Container(
              width: screenSize.width,
              height: screenSize.height * 0.4,
              color: Colors.black.withOpacity(0.1),
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Modular.to.pop();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
