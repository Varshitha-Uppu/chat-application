import 'package:chat_app/CustomUI/ButtonCard.dart';
import 'package:chat_app/Model/ChatModel.dart';
import 'package:chat_app/screens/createGroup.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/CustomUI/ContactCard.dart';

class SelectContact extends StatefulWidget {
  const SelectContact({Key? key}) : super(key: key);

  @override
  State<SelectContact> createState() => _SelectContactState();
}

class _SelectContactState extends State<SelectContact> {
  @override
  Widget build(BuildContext context) {
    List<ChatModel> contacts = [
      ChatModel(name: "DevStack", status: "A full stack developer"),
      ChatModel(name: "Balram", status: "Flutter developer"),
      ChatModel(name: "Seeta", status: "Flutter developer"),
      ChatModel(name: "Dev", status: "Developer"),
      ChatModel(name: "DevStack", status: "A full stack developer"),
      ChatModel(name: "Balram", status: "Flutter developer"),
      ChatModel(name: "Seeta", status: "Flutter developer"),
      ChatModel(name: "Dev", status: "Developer"),
    ];
    return Scaffold(
        appBar: AppBar(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Select Contact",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Text(
              //   "256 contacts",
              //   style: TextStyle(
              //     fontSize: 13,
              //   ),
              // ),
            ],
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search, size: 26,)),
            PopupMenuButton<String>(onSelected: (value) {
              print(value);
            }, itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text("Invite a friend"),
                  value: "Invite a friend",
                ),
                PopupMenuItem(
                  child: Text("Contact"),
                  value: "Contacts",
                ),
                PopupMenuItem(
                  child: Text("Refresh"),
                  value: "Refresh",
                ),
                PopupMenuItem(
                  child: Text("Help"),
                  value: "Help",
                ),
              ];
            })
          ],
        ),
        body: ListView.builder(
          itemCount: contacts.length + 2, itemBuilder: (context, index) {
          if (index == 0) {
            return InkWell(onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => CreateGroup()));
            }, child: ButtonCard(icon: Icons.group, name: "New Group",));
          }
          else if (index == 1) {
            return ButtonCard(icon: Icons.person_add, name: "New Contact",);
          }
          else {
            return ContactCard(contact: contacts[index - 2],);
          }
        },)
    );
  }
}
