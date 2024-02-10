import 'package:flutter/material.dart';
import 'package:gamefestival/screen/add_facilties.dart';
import 'package:google_fonts/google_fonts.dart';

class Catagory extends StatefulWidget {
  const Catagory({Key? key}) : super(key: key);

  @override
  _CatagoryState createState() => _CatagoryState();
}

class _CatagoryState extends State<Catagory> {
  List<String> images = [
    'assets/water.png',
    'assets/water.png',
    'assets/water.png',
    'assets/water.png',
    'assets/water.png',
  ];

  List<String> texts = [
    'Swimming',
    'Swimming',
    'Swimming',
    'Swimming',
    'Swimming',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff28293F),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 60,
        centerTitle: true,
        backgroundColor: const Color(0xff28293F),
        elevation: 0,
        title: Center(
          child: Text(
            "Categories",
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 22,
              ),
            ),
          ),
        ),
        actions: const [
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Container(
                height: 149,
                width: 386,
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => (Addfacilties())),
                      );
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xff28293F),
                      ),
                      child: Image.asset(
                        images[index],
                        height: 139,
                        width: 386,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 110,
                left: 30,
                child: Text(
                  texts[index],
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
