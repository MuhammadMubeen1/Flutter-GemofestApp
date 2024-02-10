import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class clubRequests extends StatefulWidget {
  const clubRequests({super.key});

  @override
  State<clubRequests> createState() => _clubRequestsState();
}

class _clubRequestsState extends State<clubRequests> {
  List<String> names = [
    'Usama Iqbal',
    'John Abraham',
    'Khalid Raza',
    'Alize Gill',
    'Usama Iqbal',
    'John Abraham',
    'Khalid Raza',
    'Alize Gill',
    'Usama Iqbal',
    'John Abraham',
    'Khalid Raza',
    'Alize Gill',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff28293F),
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(top: 15, bottom: 15, left: 20, right: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/colorprofile.jpg',
                        ),
                        radius: 40,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 180,
                                child: Text(
                                  names[index],
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white60),
                                ),
                              ),
                              Text(
                                "4 hr ago",
                                style: TextStyle(
                                    color: Colors.white38, fontSize: 12),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 105,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Color(0xffFFC400),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Accept',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 105,
                                height: 30,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    )),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Decline',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}
