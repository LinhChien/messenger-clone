import 'package:flutter/material.dart';
import 'package:messenger_clone/screens/boxchat/widgets/ChatAppBar.dart';
import 'package:messenger_clone/screens/boxchat/widgets/ChatListWidget.dart';
import 'package:messenger_clone/screens/boxchat/widgets/InputWidget.dart';

class BoxChatPage extends StatefulWidget {
  @override
  BoxChatScreen createState() => BoxChatScreen();
}

class BoxChatScreen extends State<BoxChatPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: ChatAppBar(), // Custom app bar for chat screen
            body: Stack(children: <Widget>[
              Column(
                children: <Widget>[
                  ChatListWidget(), //Chat list
                  InputWidget() // The input widget
                ],
              ),
            ])));
  }
}
