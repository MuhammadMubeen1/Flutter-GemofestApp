import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gamefestival/screen/chat.dart';
import 'package:gamefestival/screen/community.dart';
import 'package:gamefestival/screen/home.dart';
import 'package:gamefestival/screen/profile.dart';

import '../screen/catagory.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  final List _pages = [Home(), Catagory(), community(), chat(), Myprifile()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: const Color(0xff28293F),
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          iconSize: 25,
          selectedItemColor: Color(0xFFFFC400), // Set the selected item color
          unselectedItemColor: Colors.grey,
          onTap: (v) {
            setState(() {
              _currentIndex = v;
            });
          },
          items: const [
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: ImageIcon(
                AssetImage('assets/home.png'),
                // Increase the size of the icon
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: ImageIcon(
                AssetImage('assets/vector1.png'),
                // Increase the size of the icon
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: ImageIcon(
                AssetImage('assets/vector2.png'),
                // Increase the size of the icon
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: ImageIcon(
                AssetImage('assets/message.png'),
                // Increase the size of the icon
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: CircleAvatar(
                backgroundImage: AssetImage('assets/profile.png'),
              ),
              label: "",
            ),
          ],
          selectedFontSize: 16, // Increase the selected item font size
          unselectedFontSize: 14, // Increase the unselected item font size
        ),
      ),
      body: _pages[_currentIndex],
    ));
  }
}
