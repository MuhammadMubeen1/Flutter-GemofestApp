import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gamefestival/screen/clubsChat.dart';
import 'package:gamefestival/screen/messagesChat.dart';
import 'package:google_fonts/google_fonts.dart';

class chat extends StatefulWidget {
  const chat({super.key});

  @override
  State<chat> createState() => _chatState();
}

class _chatState extends State<chat>
// with TickerProviderStateMixin
{
  // late final TabController _tabController;

  // @override
  // void initState() {
  //   super.initState();
  //   _tabController = TabController(length: 2, vsync: this);
  // }

  // @override
  // void dispose() {
  //   _tabController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xff28293F),
        appBar: AppBar(
          backgroundColor: const Color(0xff28293F),
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: Color(0xffFFC400),
            tabs: <Widget>[
              Tab(
                text: 'Messages',
              ),
              Tab(
                text: 'Clubs',
              ),
            ],
          ),
          title: Text(
            'Chat',
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 22,
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white70,
              ),
              onPressed: () {
                // Add your search logic here
              },
            ),
            IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white70,
              ),
              onPressed: () {
                // Add your more options logic here
              },
            ),
          ],
        ),
        body: TabBarView(
          children: [messagesChat(), clubsChat()],
        ),
      ),
    );
  }
}
