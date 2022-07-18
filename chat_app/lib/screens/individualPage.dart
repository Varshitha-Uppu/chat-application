import 'package:flutter/material.dart';
import 'package:chat_app/Model/ChatModel.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IndividualPage extends StatefulWidget {
  const IndividualPage({Key? key, required this.chatModel}) : super(key: key);
  final ChatModel chatModel;

  @override
  State<IndividualPage> createState() => _IndividualPageState();
}

class _IndividualPageState extends State<IndividualPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        titleSpacing: 0,
        leadingWidth: 70,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_back,
                size: 24,
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey[400],
                child: SvgPicture.asset(
                  widget.chatModel.isGroup
                      ? "assets/group.svg"
                      : "assets/person.svg",
                  color: Colors.white,
                  height: 40,
                  width: 40,
                ),
              ),
            ],
          ),
        ),
        title: InkWell(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.chatModel.name,
                  style: TextStyle(fontSize: 18.5, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Last seen yesterday",
                  style: TextStyle(
                    fontSize: 13,
                  ),
                )
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.call),
            onPressed: () {},
          ),
          PopupMenuButton<String>(onSelected: (value) {
            print(value);
          }, itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                child: Text("View contact"),
                value: "View contact",
              ),
              PopupMenuItem(
                child: Text("Media, links, and docs"),
                value: "Media, links, and docs",
              ),
              PopupMenuItem(
                child: Text("Search"),
                value: "Search",
              ),
              PopupMenuItem(
                child: Text("Mute notifications"),
                value: "Mute notifications",
              ),
              // PopupMenuItem(
              //   child: Text("Disappearing messages"),
              //   value: "Disappearing messages",
              // ),
              PopupMenuItem(
                child: Text("Wallpaper"),
                value: "Wallpaper",
              ),
              // PopupMenuItem(
              //   child: Text("More"),
              //   value: "More",
              // ),
            ];
          })
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            ListView(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 60,
                    child: Card(
                      margin: EdgeInsets.only(
                        left: 2,
                        right: 2,
                        bottom: 8,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.multiline,
                        maxLines: 6,
                        minLines: 1,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Message",
                          prefixIcon: IconButton(
                            icon: Icon(Icons.emoji_emotions_outlined),
                            onPressed: () {},
                          ),
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.attach_file)),
                              // IconButton(
                              //     onPressed: () {},
                              //     icon: Icon(
                              //       Icons.currency_rupee,
                              //       size: 20,
                              //       color: Colors.grey,
                              //     )),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.camera_alt)),
                            ],
                          ),
                          contentPadding: EdgeInsets.all(5),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 8,
                      right: 5,
                      left: 2,
                    ),
                    child: CircleAvatar(
                      backgroundColor: Color(0xFF128C7E),
                      radius: 25,
                      child: IconButton(
                        icon: Icon(
                          Icons.mic,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
