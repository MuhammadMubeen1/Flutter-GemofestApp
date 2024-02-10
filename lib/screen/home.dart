import 'package:flutter/material.dart';
import 'package:gamefestival/screen/notification.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff28293F),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xff28293F),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo2.png',
                width: 170,
                height: 46,
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => (Notifications())),
                );
              },
              icon: const Icon(Icons.notifications_outlined),
            ),

            // IconButton(
            //   onPressed: () {},
            //   icon: const Icon(Icons.menu),
            // ),
          ],
        ),
        drawer: Drawer(
          backgroundColor: Color(0xff28293F),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 25, bottom: 10, left: 15, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/profile.png"),
                          radius: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Usama Iqbal',
                              style: TextStyle(
                                  color: Colors.grey.shade300,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Biker',
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ],
                    ),
                    Icon(
                      Icons.settings_outlined,
                      color: Color(0xFFFFC400),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Divider(
                  height: 2,
                  color: Colors.grey,
                ),
              ),
              // UserAccountsDrawerHeader(
              //   accountName: Text('Usama Iqbal',
              //       style: TextStyle(
              //         color: Colors.black,
              //         fontSize: 18,
              //       )),
              //   accountEmail: Text(
              //     'usamaiqbal74354@gmail.com',
              //     style: TextStyle(color: Colors.white),
              //   ),
              //   currentAccountPicture: CircleAvatar(
              //     backgroundImage: AssetImage("assets/profile.png"),
              //   ),
              //   decoration: BoxDecoration(color: Color(0xFFFFC400)),
              // ),
              ListTile(
                leading: Icon(
                  Icons.save_outlined,
                  color: Colors.white,
                ),
                title: Text(
                  'Saved',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.language_outlined,
                  color: Colors.white,
                ),
                title: Text(
                  'Language',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Text(
                  'ENG',
                  style: TextStyle(color: Color(0xFFFFC400)),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.support_outlined,
                  color: Colors.white,
                ),
                title: Text(
                  'Support',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.question_answer_outlined,
                  color: Colors.white,
                ),
                title: Text(
                  "FAQ's",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.help_outline,
                  color: Colors.white,
                ),
                title: Text(
                  'Help',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.logout_outlined,
                  color: Color(0xFFFFC400),
                ),
                title: Text(
                  'Sign Out',
                  style: TextStyle(color: Color(0xFFFFC400)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
