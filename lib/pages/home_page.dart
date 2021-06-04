part of 'pages.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool sidebarOpen = false;
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  void setSidebarState() {
    setState(() {
      xOffset = sidebarOpen ? 200 : 0;
      yOffset = sidebarOpen ? 130 : 0;
      scaleFactor = sidebarOpen ? 0.7 : 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: orangeColor,
      body: SafeArea(
        child: Stack(
          children: [
            CutomDrawer(
              screenSize: screenSize,
            ),
            Container(
              transform: Matrix4.translationValues(180, 170, 0)..scale(0.7),
              height: screenSize.height * 0.93,
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            AnimatedContainer(
              curve: Curves.easeInOut,
              width: screenSize.width,
              height: screenSize.height,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: sidebarOpen ? BorderRadius.circular(30.0) : null,
              ),
              transform: Matrix4.translationValues(xOffset, yOffset, 0)
                ..scale(scaleFactor),
              duration: Duration(milliseconds: 250),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            sidebarOpen = !sidebarOpen;
                            setSidebarState();
                          },
                          icon: SvgPicture.asset(
                            'assets/icons/menu.svg',
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 20.0),
                    child: Text(
                      'Delicious\nfood for you',
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 0),
                    decoration: BoxDecoration(
                      color: greyColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search',
                        hintStyle: TextStyle(color: greyTextColor),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    width: screenSize.width,
                    height: screenSize.height * 0.55,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: foods.length,
                      itemBuilder: (context, index) {
                        return ItemCard(
                          screenSize: screenSize,
                          itemName: foods[index].menuName,
                          itemPrice: foods[index].price.toString(),
                          imagePath: foods[index].picture,
                          buttonPress: foods[index].itemPressed,
                        );
                      },
                    ),
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
