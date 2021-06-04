part of 'pages.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.grey[100],
            padding: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 20.0),
            height: screenSize.height * 1.3,
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
                    Spacer(),
                    Text(
                      'My profile',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
                //user profile card
                Container(
                  width: screenSize.width,
                  margin: EdgeInsets.only(top: screenSize.height * 0.1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Information',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20.0),
                        width: screenSize.width,
                        height: screenSize.height * 0.15,
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
                                  profile.photo,
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
                                    profile.name,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(height: 5.0),
                                  Text(
                                    profile.email,
                                    style: TextStyle(
                                      color: greyTextColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //user address
                Container(
                  width: screenSize.width,
                  margin: EdgeInsets.only(top: screenSize.height * 0.1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20.0),
                        padding: EdgeInsets.all(20.0),
                        width: screenSize.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 30.0, left: 15.0),
                          child: Column(
                            children: [
                              Address(
                                screenSize: screenSize,
                                addressText: profile.name,
                              ),
                              Address(
                                screenSize: screenSize,
                                addressText: profile.address,
                              ),
                              Address(
                                screenSize: screenSize,
                                addressText: profile.noHp,
                                isBottom: true,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
