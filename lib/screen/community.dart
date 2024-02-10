import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gamefestival/screen/clubs.dart';
import 'package:gamefestival/screen/events.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/custom_button.dart';

class community extends StatefulWidget {
  const community({super.key});

  @override
  State<community> createState() => _communityState();
}

class _communityState extends State<community> {
  List<String> items = [
    "Events",
    "Clubs",
  ];

  /// List of body icon
  List<IconData> icons = [
    Icons.home,
    Icons.explore,
    Icons.search,
    Icons.feed,
    Icons.post_add,
    Icons.local_activity,
    Icons.settings,
    Icons.person
  ];
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff28293F),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xff28293F),
          centerTitle: true,
          title: Text(
            'Community',
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
        body: Container(
            width: double.infinity,
            height: double.infinity,
            margin: const EdgeInsets.all(5),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      // filled: true,
                      // fillColor: Colors.grey.shade800,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: const BorderSide(
                          width: 0.5,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 1.5,
                        ),
                      ),
                      hintText: 'Search',
                      hintStyle: const TextStyle(color: Colors.grey)),
                ),
              ),
              const SizedBox(
                height: 15,
              ),

              /// CUSTOM TABBAR
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: 2,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, index) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                current = index;
                              });
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              margin: const EdgeInsets.all(5),
                              width: 100,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: current == index
                                    ? BorderRadius.circular(30)
                                    : BorderRadius.circular(30),
                                border: current == index
                                    ? Border.all(
                                        color: Color(0xffFFC400), width: 1)
                                    : null,
                              ),
                              child: Center(
                                child: Text(
                                  items[index],
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w500,
                                      color: current == index
                                          ? Color(0xffFFC400)
                                          : Colors.grey),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
              current == 0
                  ? Expanded(child: events())
                  : Expanded(child: clubs()),

              //   current ==0 ? Expanded(child: events()): Container(),
              // current==1 ?
              //   Expanded(child: clubs())

              //       /// MAIN BODY
              //       Container(
              //         margin: const EdgeInsets.only(top: 30),
              //         width: double.infinity,
              //         height: 550,
              //         child: Column(
              //           mainAxisAlignment: MainAxisAlignment.center,
              //           children: [
              //             Icon(
              //               icons[current],
              //               size: 200,
              //               color: Colors.deepPurple,
              //             ),
              //             const SizedBox(
              //               height: 10,
              //             ),
              //             Text(
              //               items[current],
              //               style: GoogleFonts.laila(
              //                   fontWeight: FontWeight.w500,
              //                   fontSize: 30,
              //                   color: Colors.deepPurple),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ])));
  }
}










































// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// import '../common/custom_button.dart';

// class community extends StatefulWidget {
//   const community({super.key});

//   @override
//   State<community> createState() => _communityState();
// }

// class _communityState extends State<community> {
  

//   List<String> items = [
//     "Home",
//     "Explore",
//     "Search",
//     "Feed",
//     "Post",
//     "Activity",
//     "Setting",
//     "Profile",
//   ];

//   /// List of body icon
//   List<IconData> icons = [
//     Icons.home,
//     Icons.explore,
//     Icons.search,
//     Icons.feed,
//     Icons.post_add,
//     Icons.local_activity,
//     Icons.settings,
//     Icons.person
//   ];
//   int current = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//         floatingActionButton: CustomButton(
//           onPressed: () {},
//           text: 'Create New Club',
//           color: Colors.white,
//           height: 51,
//           width: 320,
//         ),
//         backgroundColor: const Color(0xff28293F),
//         appBar: AppBar(
//           elevation: 0,
//           backgroundColor: const Color(0xff28293F),
//           centerTitle: true,
//           title: Text(
//             'Community',
//             style: GoogleFonts.roboto(
//               textStyle: const TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.w600,
//                 fontSize: 22,
//               ),
//             ),
//           ),
//           actions: [],
//         ),
//         body: Container(
//             width: double.infinity,
//             height: double.infinity,
//             margin: const EdgeInsets.all(5),
//             child: Column(children: [
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                       // filled: true,
//                       // fillColor: Colors.grey.shade800,
//                       prefixIcon: Padding(
//                         padding: const EdgeInsets.only(left: 8),
//                         child: Icon(
//                           Icons.search,
//                           color: Colors.grey,
//                         ),
//                       ),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30.0),
//                         borderSide: const BorderSide(
//                           width: 0.5,
//                         ),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30.0),
//                         borderSide: const BorderSide(
//                           color: Colors.grey,
//                           width: 0.5,
//                         ),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30.0),
//                         borderSide: const BorderSide(
//                           color: Colors.grey,
//                           width: 1.5,
//                         ),
//                       ),
//                       hintText: 'Search',
//                       hintStyle: const TextStyle(color: Colors.grey)),
//                 ),
//               ),
//               const SizedBox(
//                 height: 15,
//               ),

//               /// CUSTOM TABBAR
//               SizedBox(
//                 width: double.infinity,
//                 height: 60,
//                 child: ListView.builder(
//                     physics: const BouncingScrollPhysics(),
//                     itemCount: 2,
//                     scrollDirection: Axis.horizontal,
//                     itemBuilder: (ctx, index) {
//                       return Column(
//                         children: [
//                           GestureDetector(
//                             onTap: () {
//                               setState(() {
//                                 current = index;
//                               });
//                             },
//                             child: AnimatedContainer(
//                               duration: const Duration(milliseconds: 300),
//                               margin: const EdgeInsets.all(5),
//                               width: 100,
//                               height: 45,
//                               decoration: BoxDecoration(
//                                 borderRadius: current == index
//                                     ? BorderRadius.circular(30)
//                                     : BorderRadius.circular(30),
//                                 border: current == index
//                                     ? Border.all(
//                                         color: Color(0xffFFC400), width: 1)
//                                     : null,
//                               ),
//                               child: Center(
//                                 child: Text(
//                                   items[index],
//                                   style: GoogleFonts.roboto(
//                                       fontWeight: FontWeight.w500,
//                                       color: current == index
//                                           ? Color(0xffFFC400)
//                                           : Colors.grey),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       );
//                     }),
//               ),

//               //       /// MAIN BODY
//               //       Container(
//               //         margin: const EdgeInsets.only(top: 30),
//               //         width: double.infinity,
//               //         height: 550,
//               //         child: Column(
//               //           mainAxisAlignment: MainAxisAlignment.center,
//               //           children: [
//               //             Icon(
//               //               icons[current],
//               //               size: 200,
//               //               color: Colors.deepPurple,
//               //             ),
//               //             const SizedBox(
//               //               height: 10,
//               //             ),
//               //             Text(
//               //               items[current],
//               //               style: GoogleFonts.laila(
//               //                   fontWeight: FontWeight.w500,
//               //                   fontSize: 30,
//               //                   color: Colors.deepPurple),
//               //             ),
//               //           ],
//               //         ),
//               //       ),
//               //     ],
//               //   ),
//               // ),

              
//             ])));
//   }
// }
