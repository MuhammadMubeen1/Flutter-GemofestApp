import 'package:flutter/material.dart';
import 'package:gamefestival/screen/notification.dart';
import 'package:get/get.dart';

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
          iconTheme: const IconThemeData(color: Colors.white),
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
              icon: const Icon(
                Icons.notifications_outlined,
                size: 30,
                color: Colors.white,
              ),
            ),
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
                        const CircleAvatar(
                          backgroundImage: AssetImage("assets/profile.png"),
                          radius: 30,
                        ),
                        const SizedBox(
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
                            const Text(
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
                    const Icon(
                      Icons.settings_outlined,
                      color: Color(0xFFFFC400),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
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
              const ListTile(
                leading: Icon(
                  Icons.save_outlined,
                  color: Colors.white,
                ),
                title: Text(
                  'Saved',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const ListTile(
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
              const ListTile(
                leading: Icon(
                  Icons.support_outlined,
                  color: Colors.white,
                ),
                title: Text(
                  'Support',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.question_answer_outlined,
                  color: Colors.white,
                ),
                title: Text(
                  "FAQ's",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.help_outline,
                  color: Colors.white,
                ),
                title: Text(
                  'Help',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const ListTile(
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
        body: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Image.asset(
                  'assets/fotball.jpg',
                  width: 500.0,
                  height: 180.0,
                  colorBlendMode: BlendMode.darken,
                  color: Colors.black.withOpacity(0.4),
                  fit: BoxFit.cover,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 100, left: 10),
                  child: Text(
                    "23 Aug 2023",
                    style: TextStyle(
                        color: Color(0xFFFFC400),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 125, left: 10),
                  child: Text(
                    "Ronaldo Beats the world best\nteam in FIFA 2023",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 327.0,
              height: 74.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(20.0), // Adjust the radius as needed
                //color: Colors.black.withOpacity(0.4),
                border: Border.all(
                  color: Color(0xFFFFC400),
                  width: 2.0,
                ),
              ),
              child: const Center(
                child: Text(
                  "Champions keep playing until \n they get it right.",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 270),
              child: Text(
                "Daily  Activity ",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Container(
                width: double.infinity,
                height: 120,
                child: ListView.builder(
                    physics: const ScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          height: 150,
                          width: 150,
                          margin: const EdgeInsets.all(8),
                          color: Color(0xff383838),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Image.asset(
                                  'assets/moterbyke.png',
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              const Text(
                                'Exercise \n 30 mint ',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            ],
                          ));
                    }),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Row(
                children: [
                  Text(
                    "Upcoming Events",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  Text(
                    "View All ",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 120,
              child: ListView.builder(
                  physics: const ScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        decoration: BoxDecoration(
                          color: Color(0xff383838),
                          borderRadius: BorderRadius.circular(
                              10), // Adjust the radius as needed
                        ),
                        height: 250,
                        width: 350,
                        margin: const EdgeInsets.all(8),
                        child: Image.asset(
                          'assets/image1.png',
                          fit: BoxFit.fill,
                        ));
                  }),
            ),
          ]),
        ),
      ),
    );
  }
}
