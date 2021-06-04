part of 'pages.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFFF4B3A),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: screenSize.width * 0.15,
          vertical: screenSize.height * 0.1,
        ),
        child: Column(
          children: [
            Text(
              'Food for Everyone',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 55,
                color: Colors.white,
              ),
            ),
            Spacer(),
            SvgPicture.asset(
              'assets/images/women-yoga.svg',
              fit: BoxFit.cover,
            ),
            SizedBox(height: screenSize.height * 0.05),
            GestureDetector(
              onTap: () {
                Modular.to.navigate('/home');
              },
              child: Container(
                alignment: Alignment.center,
                width: screenSize.width,
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  'Get started',
                  style: TextStyle(
                    color: orangeColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
