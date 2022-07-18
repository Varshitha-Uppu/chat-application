import 'package:flutter/material.dart';
import 'package:chat_app/CustomUI/CustomCard.dart';
import 'package:chat_app/Model/ChatModel.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
      name: "Mom",
      currentMessage: "Bye mom",
      time: "4:00",
      isGroup: false,
      icon: "person.svg",
    ),
    ChatModel(
      name: "Pandu",
      currentMessage: "Send this back",
      time: "10:00",
      isGroup: false,
      icon: "person.svg",
    ),
    ChatModel(
      name: "EEE girls",
      currentMessage: "Hii guyms",
      time: "11:02",
      isGroup: true,
      icon: "group.svg",
    ),
  ];

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
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => CustomCard(
          chatModel: chats[index],
        ),
      ),
    );
  }
}
