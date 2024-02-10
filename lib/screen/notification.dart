import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List items = ["Usama, Anas, Ahmed, Raza, Ali"];

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
          'Notifications',
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
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(top: 15, bottom: 15, left: 20, right: 20),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.amber,
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/mubeen.jpg',
                              ),
                              fit: BoxFit.fill,
                            )),
                        height: 55,
                        width: 55,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 220,
                            child: RichText(
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              softWrap: true,
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'List Item $index  ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white70,
                                          fontSize: 15)),
                                  TextSpan(
                                      text:
                                          'My name is Usama I am a flutter developer at surjX software house lahore',
                                      style: TextStyle(
                                          color: Colors.white54,
                                          fontSize: 14.5))
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "25 days ago",
                            style:
                                TextStyle(color: Colors.white38, fontSize: 12),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 17,
                      ),
                      Icon(
                        Icons.circle_rounded,
                        size: 11,
                        color: Color(0xffFFC400),
                      )
                    ],
                  ),
                ),
                Divider(
                  thickness: 0,
                  color: Colors.grey,
                )
              ],
            );
          }),
    );
  }
}








































// class Notificationss extends StatefulWidget {
//   const Notificationss({super.key});

//   @override
//   State<Notificationss> createState() => _NotificationssState();
// }

// class _NotificationssState extends State<Notificationss> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xff28293F),
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: const Color(0xff28293F),
//         leading: IconButton(
//           icon: const ImageIcon(
//             AssetImage('assets/backword.png'),
//             size: 35,
//           ),
//           onPressed: () {
//             // Handle back button press
//           },
//         ),
//         centerTitle: true,
//         title: Text(
//           'Notifications',
//           style: GoogleFonts.roboto(
//             textStyle: const TextStyle(
//               color: Colors.white,
//               fontWeight: FontWeight.w600,
//               fontSize: 22,
//             ),
//           ),
//         ),
//         actions: [],
//       ),
//       body: SizedBox(
//         height: 1000,
//         child: ListView.builder(
//           itemCount: 20,
//           itemBuilder: (BuildContext context, int index) {
//             return Column(
//               children: [
//                 SizedBox(
//                   height: 80,
//                   width: 50,
//                   child: Card(
//                     color: const Color(0xff28293F),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     child: Column(
//                       children: [
//                         // Image.asset(
//                         //   'assets/images/image_$index.png',
//                         //   width: 150,
//                         //   height: 150,
//                         // ),
//                         Text('Title $index'),
//                         Text('Description $index'),
//                       ],
//                     ),
//                   ),
//                 ),
//                 const Divider(
//                   thickness: 0, // Adjust the thickness as needed
//                   color: Colors.grey, // Adjust the color as needed
//                 ),
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
