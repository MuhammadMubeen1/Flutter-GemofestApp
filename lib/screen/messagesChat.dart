import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gamefestival/screen/doChat.dart';

class messagesChat extends StatefulWidget {
  const messagesChat({super.key});

  @override
  State<messagesChat> createState() => _messagesChatState();
}

class _messagesChatState extends State<messagesChat> {
  final List<String> items = List.generate(12, (index) => 'Item ${index + 1}');
  // List<String> items = ['1,2 ,3 ,4,5'];

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
      backgroundColor: Color(0xff28293F),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              names[index],
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              'To be Honest Things',
              style: TextStyle(color: Colors.grey),
            ),
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/cycle1.jpg'),
            ),
            trailing: Text(
              '3:44 PM',
              style: TextStyle(color: Colors.white38),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => (doChat())),
              );
              print('Tapped on ${items[index]}');
            },
          );
        },
      ),
    );
  }
}
