import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/custom_button.dart';

class clubDetails1 extends StatefulWidget {
  const clubDetails1({super.key});

  @override
  State<clubDetails1> createState() => _clubDetails1State();
}

class _clubDetails1State extends State<clubDetails1> {
  bool isLoading = false;

  List RandomImages = [
    'https://pbs.twimg.com/media/D8dDZukXUAAXLdY.jpg',
    'https://pbs.twimg.com/profile_images/1249432648684109824/J0k1DN1T_400x400.jpg',
    'https://i0.wp.com/thatrandomagency.com/wp-content/uploads/2021/06/headshot.png?resize=618%2C617&ssl=1',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaOjCZSoaBhZyODYeQMDCOTICHfz_tia5ay8I_k3k&s',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff28293F),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff28293F),
        leading: IconButton(
          icon: const ImageIcon(
            AssetImage('assets/backword.png'),
            size: 35,
          ),
          onPressed: () {
            // Handle back button press
          },
        ),
        centerTitle: true,
        title: Text(
          'Clubs',
          style: GoogleFonts.roboto(
            textStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 22,
            ),
          ),
        ),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/cycle05.jpg'),
                        fit: BoxFit.cover)),
                width: double.infinity,
                height: 180,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Bikers Race",
                        style: TextStyle(
                            color: Colors.grey.shade300,
                            fontWeight: FontWeight.w400,
                            fontSize: 25),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        'Public Group',
                        style: TextStyle(color: Colors.white54, fontSize: 14),
                      ),
                      Text(
                        " . ",
                        style: TextStyle(
                            color: Colors.white54,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      Text(
                        '48K',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      Text(
                        ' members',
                        style: TextStyle(color: Colors.white54, fontSize: 14),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    text: 'Create New Event',
                    onPressed: () {},
                    isLoading: isLoading,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: ImageIcon(
                              AssetImage('assets/people.png'),
                              size: 27,
                              color: Colors.white70,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text('Invite',
                              style: TextStyle(
                                  color: Colors.white54, fontSize: 14))
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: ImageIcon(
                              AssetImage('assets/messages.png'),
                              size: 27,
                              color: Colors.white70,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text('Message',
                              style: TextStyle(
                                  color: Colors.white54, fontSize: 14))
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: ImageIcon(
                              AssetImage('assets/share.png'),
                              size: 27,
                              color: Colors.white70,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text('Share',
                              style: TextStyle(
                                  color: Colors.white54, fontSize: 14))
                        ],
                      )
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Container(
                          width: 250,
                          height: 100,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: RandomImages.length,
                              itemBuilder: (context, index) {
                                return Align(
                                  widthFactor: 0.7,
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundColor: Color(0xff28293F),
                                    child: CircleAvatar(
                                      radius: 22,

                                      backgroundImage: NetworkImage(
                                        RandomImages[index],
                                      ), // Provide your custom image
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ),
                      Text(
                        'Manage',
                        style: TextStyle(
                          color: Colors.white70,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),

                  // Container(
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         children: [
                  //           for (int i = 0; i < RandomImages.length; i++)
                  //             Container(
                  //               margin: EdgeInsets.symmetric(vertical: 0),
                  //               child: Align(
                  //                   widthFactor: 0.3,
                  //                   child: CircleAvatar(
                  //                     radius: 30,
                  //                     backgroundColor: Color(0xff28293F),
                  //                     child: CircleAvatar(
                  //                       radius: 20,
                  //                       backgroundImage: NetworkImage(
                  //                         RandomImages[i],
                  //                       ),
                  //                     ),
                  //                   )),
                  //             )
                  //         ],
                  //       ),
                  //     ],
                  //   ),
                  // ),

                  Divider(
                    height: 5,
                    color: Colors.white24,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "About Club",
                        style: TextStyle(
                            color: Colors.grey.shade300,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                          style: TextStyle(color: Colors.white54, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
