import 'package:flutter/material.dart';
import 'package:chat_app/CustomUI/CustomCard.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.chat,
          color: Colors.white,
        ),
      ),
      body: ListView(
        children: [
          CustomCard(),
          CustomCard(),
        ],
      ),
    );
  }
}
