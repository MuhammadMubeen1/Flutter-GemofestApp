import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gamefestival/screen/chat.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

class doChat extends StatefulWidget {
  const doChat({super.key});

  @override
  State<doChat> createState() => _doChatState();
}

class _doChatState extends State<doChat> {
  List<types.Message> _messages = [];
  final _user = const types.User(
    id: '82091008-a484-4a89-ae75-a22bf8d6f3ac',
  );

  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: "id",
      text: message.text,
    );

    _addMessage(textMessage);
  }

  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff28293F),
      appBar: AppBar(
        backgroundColor: const Color(0xff28293F),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
        title: ListTile(
          title: Text(
            "John Vick",
            style: TextStyle(color: Colors.white),
          ),
          subtitle: Text(
            '3:44 PM',
            style: TextStyle(color: Colors.white38),
            // 'To be Honest Things',
            // style: TextStyle(color: Colors.grey),
          ),
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/cycle1.jpg'),
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
      body: Chat(
        messages: _messages,
        onSendPressed: _handleSendPressed,
        user: _user,
        // showUserAvatars: true,
        // showUserNames: true,
      ),
    );
  }
}
