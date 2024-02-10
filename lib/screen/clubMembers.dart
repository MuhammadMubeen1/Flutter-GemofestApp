import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class clubMembers extends StatefulWidget {
  const clubMembers({super.key});

  @override
  State<clubMembers> createState() => _clubMembersState();
}

class _clubMembersState extends State<clubMembers> {
  final List<String> items = List.generate(100, (index) => 'Item ${index + 1}');

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
              'hello World . . .',
              style: TextStyle(color: Colors.grey),
            ),
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/girlprofile.jpg'),
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
