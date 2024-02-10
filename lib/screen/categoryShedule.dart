import 'package:carousel_slider/carousel_slider.dart';
import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:gamefestival/common/bottom_nav_bar.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/custom_button.dart';

class categoryShedule extends StatefulWidget {
  const categoryShedule({super.key});

  @override
  State<categoryShedule> createState() => _categorySheduleState();
}

class _categorySheduleState extends State<categoryShedule> {
  String? _selectedItem;
  bool isLoading = false;
  List<String> _items = [
    'Item 1',
    'Item 2',
    'Item 3',
  ];

  int tag = 1;

  List<String> tags = [];

  List<String> options = [
    '12:00',
    '13:00',
    '14:00',
    '15:00',
    '16:00',
    '17:00',
    '18:00',
  ];

  List<String> games = [
    'Snooker',
    'Badminton',
    'Basketball',
    'Cricket',
    'Hockey',
    'Tennis',
    'Football',
    'Golf'
  ];

  bool _value = false;
  bool _valu = false;

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
            'Category Schedule',
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
          child: Padding(
            padding: const EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Select Category',
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                  ),
                  items: games.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/cycle1.jpg')),
                                border:
                                    Border.all(color: Colors.grey, width: 0.5),
                                borderRadius: BorderRadius.circular(25)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 35,
                                        decoration: BoxDecoration(
                                          color: Color(0xff28293F),
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(25),
                                              bottomRight: Radius.circular(25)),
                                        ),
                                        child: Center(
                                          child: Text(
                                            '$i',
                                            style: TextStyle(
                                                fontSize: 17.0,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xffFFC400)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ));
                      },
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Divider(
                color: Colors.grey.shade700,
                height: 0.5,
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 1.5,
                      ),
                    ),
                    hintText: 'Members Allowed',
                    hintStyle: const TextStyle(color: Colors.grey)),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Select Weekly Time Slots',
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              CheckboxListTile(
                contentPadding: EdgeInsets.all(0),
                controlAffinity: ListTileControlAffinity.leading,
                side: BorderSide(color: Colors.white70),
                title: const Text(
                  "Same Slots for whole week",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
                activeColor: Color(0xffFFC400),
                value: timeDilation != 1.0,
                onChanged: (bool? value) {
                  setState(() {
                    timeDilation = value! ? 10.0 : 1.0;
                  });
                },
              ),
              Text(
                'Monday',
                style: TextStyle(
                    color: Colors.grey.shade200,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: ChipsChoice<String>.multiple(
                  value: tags,
                  onChanged: (val) => setState(() => tags = val),
                  choiceItems: C2Choice.listFrom<String, String>(
                    source: options,
                    value: (i, v) => v,
                    label: (i, v) => v,
                    tooltip: (i, v) => v,
                  ),
                  choiceStyle: C2ChipStyle.outlined(),
                ),
              ),
              Text(
                'Tuesday',
                style: TextStyle(
                    color: Colors.grey.shade200,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: ChipsChoice<String>.multiple(
                  value: tags,
                  onChanged: (val) => setState(() => tags = val),
                  choiceItems: C2Choice.listFrom<String, String>(
                    source: options,
                    value: (i, v) => v,
                    label: (i, v) => v,
                    tooltip: (i, v) => v,
                  ),
                  choiceStyle: C2ChipStyle.outlined(),
                ),
              ),
              Text(
                'Friday',
                style: TextStyle(
                    color: Colors.grey.shade200,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: ChipsChoice<String>.multiple(
                  value: tags,
                  onChanged: (val) => setState(() => tags = val),
                  choiceItems: C2Choice.listFrom<String, String>(
                    source: options,
                    value: (i, v) => v,
                    label: (i, v) => v,
                    tooltip: (i, v) => v,
                  ),
                  choiceStyle: C2ChipStyle.outlined(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: CustomButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => BottomNavBar()),
                    );
                  },
                  text: 'Done',
                  color: Colors.white,
                  height: 51,
                  width: 360,
                  isLoading: isLoading,
                ),
              ),
            ]),
          ),
        ));
  }
}
