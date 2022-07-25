class ChatModel {
  String name;
  String icon;
  bool isGroup;
  String time;
  String currentMessage;
  String status;
  bool select;

  ChatModel(
  { this.name = "Default name",
        this.icon = "person.svg",
       this.isGroup = false,
       this.time = "4:00 PM",
       this.currentMessage = "Default Message",
       this.status = "Default status",
        this.select = false,
  });
}
