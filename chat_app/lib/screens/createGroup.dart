import 'package:chat_app/CustomUI/ButtonCard.dart';
import 'package:chat_app/Model/ChatModel.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/CustomUI/ContactCard.dart';

class CreateGroup extends StatefulWidget {
  const CreateGroup({Key? key}) : super(key: key);

  @override
  State<CreateGroup> createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
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
  List<ChatModel> groups = [];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "New Group",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Add participants",
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: 26,
                )),
          ],
        ),
        body: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (context, index) {
              return InkWell(
                onTap: (){
                  if(contacts[index].select==false){
                    setState((){
                      contacts[index].select = true;
                      groups.add(contacts[index]);
                    });
                  }
                  else{
                    setState((){
                      contacts[index].select = false;
                      groups.remove(contacts[index]);
                    });
                  }
                },
                child: ContactCard(
                  contact: contacts[index],
                ),
              );
          },
        ));
  }
}
