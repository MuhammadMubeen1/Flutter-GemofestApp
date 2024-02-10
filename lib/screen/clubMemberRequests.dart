import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gamefestival/screen/clubDetails2.dart';
import 'package:gamefestival/screen/clubMembers.dart';
import 'package:gamefestival/screen/clubRequests.dart';
import 'package:google_fonts/google_fonts.dart';

import 'clubsChat.dart';
import 'messagesChat.dart';

class clubMemberRequests extends StatefulWidget {
  const clubMemberRequests({super.key});

  @override
  State<clubMemberRequests> createState() => _clubMemberRequestsState();
}

class _clubMemberRequestsState extends State<clubMemberRequests> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xff28293F),
        appBar: AppBar(
          backgroundColor: const Color(0xff28293F),
          leading: IconButton(
            icon: const ImageIcon(
              AssetImage('assets/backword.png'),
              size: 35,
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => (clubDetails2())),
              );
            },
          ),
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: Color(0xffFFC400),
            tabs: <Widget>[
              Tab(
                text: 'Members',
              ),
              Tab(
                text: 'Requests',
              ),
            ],
          ),
          title: Text(
            'Members',
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 22,
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [clubMembers(), clubRequests()],
        ),
      ),
    );
  }
}
