import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class clubsChat extends StatefulWidget {
  const clubsChat({super.key});

  @override
  State<clubsChat> createState() => _clubsChatState();
}

class _clubsChatState extends State<clubsChat> {
  final List<String> items = List.generate(100, (index) => 'Item ${index + 1}');
  // List<String> items = ['1,2 ,3 ,4,5'];

  List<String> names = [
    'Bikes Club',
    'Race Beast',
    'Cyclist Way',
    'Bikes Club',
    'Race Beast',
    'Cyclist Way',
    'Bikes Club',
    'Race Beast',
    'Cyclist Way',
    'Bikes Club',
    'Race Beast',
    'Cyclist Way',
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
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            subtitle: Text(
              'Group Athletic Word',
              style: TextStyle(color: Colors.grey),
            ),
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/volleyz.jpg'),
            ),
            trailing: Text(
              '3:44 PM',
              style: TextStyle(color: Colors.white38),
            ),
            onTap: () {
              // Action when the item is tapped
              print('Tapped on ${items[index]}');
            },
          );
        },
      ),
    );
  }
}
