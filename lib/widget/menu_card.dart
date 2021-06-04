part of 'widgets.dart';

class MenuCard extends StatefulWidget {
  const MenuCard({
    Key? key,
    required this.screenSize,
    required this.menuName,
    required this.price,
    required this.imagePath,
  }) : super(key: key);

  final Size screenSize;
  final String menuName;
  final String price;
  final String imagePath;

  @override
  _MenuCardState createState() => _MenuCardState();
}

class _MenuCardState extends State<MenuCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Modular.to.pushNamed('/detail', arguments: );
      },
      child: Container(
        margin: EdgeInsets.only(top: 20.0),
        width: widget.screenSize.width,
        height: widget.screenSize.height * 0.17,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image.asset(
                  widget.imagePath,
                  width: 80.0,
                  height: 80.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.0, left: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.menuName,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'Rp ${widget.price.toString()}',
                    style: TextStyle(
                      color: orangeColor,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
