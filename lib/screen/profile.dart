import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/custom_button.dart';

class Myprifile extends StatefulWidget {
  const Myprifile({super.key});

  @override
  State<Myprifile> createState() => _MyprifileState();
}

class _MyprifileState extends State<Myprifile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff28293F),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff28293F),
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
                child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: CircleAvatar(
                radius: 75,
                backgroundColor: Color(0xFFFFC400),
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: Color(0xff211A2C),
                  child: CircleAvatar(
                    radius: 65,
                    backgroundImage: AssetImage('assets/profile.png'),
                  ),
                ),
              ),
            )),
            const SizedBox(
              height: 20,
            ),
            Text("John Levis",
                style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 28,
                ))),
            const SizedBox(
              height: 7,
            ),
            Text(
              "New York City",
              style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                color: Color(0xFFFFC400),
                fontWeight: FontWeight.w500,
                fontSize: 14,
              )),
            ),
            const SizedBox(
              height: 10,
            ),
            Text("Traveller, photographer & explorer",
                style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 17))),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text("5.6K",
                          style: GoogleFonts.roboto(
                              textStyle: const TextStyle(
                            color: Color(0xffFFC400),
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ))),
                      Text(
                        "Followers",
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  Column(
                    children: [
                      Text(
                        "1.6K",
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            color: Color(0xffFFC400),
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Text(
                        "Following",
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 280,
              decoration: BoxDecoration(
                color: const Color(0xff28293F),
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: const Color(
                      0xffFFC400), // Replace Colors.red with the desired color
                  width: 1.0,
                ),
              ),
              child: Center(
                  child: Text(
                "Watch Your Events",
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    color: Color(0xffafafaf),
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              )),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              leading: IconButton(
                onPressed: () {
                  // Add your desired functionality here
                },
                icon: Image.asset(
                  'assets/mans.png',
                  width: 24, // Adjust the width as needed
                  height: 24, // Adjust the height as needed
                ),
              ),
              title: Text('Edit my profile',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  )),
              subtitle: Text(
                'Update your personal information',
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
              ),
              trailing: Text(''),
            ),
            ListTile(
              leading: IconButton(
                onPressed: () {
                  // Add your desired functionality here
                },
                icon: Image.asset(
                  'assets/setting.png',
                  width: 24, // Adjust the width as needed
                  height: 24, // Adjust the height as needed
                ),
              ),
              title: Text('Settings',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  )),
              subtitle: Text(
                'Edit security and other setting',
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
              ),
              trailing: Text(''),
            ),
            ListTile(
              leading: IconButton(
                onPressed: () {
                  // Add your desired functionality here
                },
                icon: Image.asset(
                  'assets/signout.png',
                  width: 24, // Adjust the width as needed
                  height: 24, // Adjust the height as needed
                ),
              ),
              title: Text('Sign out',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  )),
              subtitle: Text(
                'Log out of your account',
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
              ),
              trailing: Text(''),
            ),
          ],
        ),
      ),
    );
  }
}
