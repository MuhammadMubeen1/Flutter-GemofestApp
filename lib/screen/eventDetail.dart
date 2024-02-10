import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gamefestival/common/custom_button.dart';
import 'package:gamefestival/screen/confirmMethod.dart';
import 'package:google_fonts/google_fonts.dart';

class eventDetail extends StatefulWidget {
  const eventDetail({super.key});

  @override
  State<eventDetail> createState() => _eventDetailState();
}

class _eventDetailState extends State<eventDetail> {
  bool isLoading = false;
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
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          'Event',
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
                        image: AssetImage('assets/bike6.jpg'),
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '21',
                                style: TextStyle(
                                    fontSize: 32, color: Colors.white),
                              ),
                              SizedBox(
                                height: 1,
                              ),
                              Text(
                                'Nov',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xffFFC400),
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bikers Race",
                            style: TextStyle(
                                color: Colors.grey.shade300,
                                fontWeight: FontWeight.w500,
                                fontSize: 27),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Public Group',
                            style:
                                TextStyle(color: Colors.white54, fontSize: 15),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    text: 'Buy Tickets',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => (confirmMethod())),
                      );
                    },
                    isLoading: isLoading,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.star_border_rounded,
                                size: 37,
                                color: Colors.white30,
                              )),
                          SizedBox(
                            height: 3,
                          ),
                          Text('Interested',
                              style: TextStyle(
                                  color: Colors.white54, fontSize: 14))
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.done,
                                size: 35,
                                color: Colors.white30,
                              )),
                          SizedBox(
                            height: 3,
                          ),
                          Text('Going',
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
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    height: 5,
                    color: Colors.white24,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.people_outlined,
                        size: 30,
                        color: Color(0xffFFC400),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "34 Going - 2K Interested - 660 Shares",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.money_outlined,
                        size: 30,
                        color: Color(0xffFFC400),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Paid event - \$11.00",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    height: 5,
                    color: Colors.white24,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Thu, Nov 21 at 8 PM",
                            style: TextStyle(
                                color: Colors.grey.shade200,
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Next Week',
                            style:
                                TextStyle(color: Colors.white54, fontSize: 13),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    height: 5,
                    color: Colors.white24,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Gaddafi Stadium",
                                style: TextStyle(
                                    color: Colors.grey.shade200,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '20 Walton St, Liberty, Lahore',
                                style: TextStyle(
                                    color: Colors.white54, fontSize: 13),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Icon(
                        Icons.location_on,
                        size: 30,
                        color: Color(0xffFFC400),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    height: 5,
                    color: Colors.white24,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
                          style: TextStyle(color: Colors.white70, fontSize: 13),
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
