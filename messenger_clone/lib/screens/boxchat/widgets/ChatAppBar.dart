import 'package:flutter/material.dart';

import 'package:messenger_clone/screens/chat/chat_page.dart';

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height = 60;
  @override
  Widget build(BuildContext context) {
    var textHeading = TextStyle(
        color: Color(0xFF6F35A5),
        fontSize: 16,
        fontWeight: FontWeight.w800); // Text style for the name
    var textStyle = TextStyle(
        color: Color(0xFF6F35A5),
        fontSize: 11); // Text style for everything else
    double width =
        MediaQuery.of(context).size.width; // calculate the screen width
    return Material(
        child: Container(
            decoration: new BoxDecoration(boxShadow: [
              //adds a shadow to the appbar
              new BoxShadow(
                color: Colors.grey,
                blurRadius: 5.0,
              )
            ]),
            child: Container(
                color: Color(0xFFF1E6FF),
                child: Row(children: <Widget>[
                  Expanded(
                      //we're dividing the appbar into 7 : 3 ratio. 7 is for content and 3 is for the display picture.
                      flex: 7,
                      child: Center(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                  height: 60 - (width * .06),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      CircleAvatar(
                                        backgroundColor: Color(0xFFF1E6FF),
                                        child: IconButton(
                                          icon: Icon(
                                            Icons.arrow_back,
                                            size: 26,
                                            color: Color(0xFF6F35A5),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) {
                                                  return ChartScreen();
                                                },
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                      Expanded(
                                          flex: 2,
                                          child: Container(
                                              child: Center(
                                                  child: CircleAvatar(
                                            backgroundImage: Image.asset(
                                              "assets/img/avata.jpg",
                                            ).image,
                                          )))),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                          flex: 6,
                                          child: Container(
                                              child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              Text('Linh Chiến',
                                                  style: textHeading),
                                              Text('Active now',
                                                  style: textStyle),
                                            ],
                                          ))),
                                      CircleAvatar(
                                        backgroundColor: Color(0xFFF1E6FF),
                                        child: IconButton(
                                          icon: Icon(
                                            Icons.phone,
                                            size: 26,
                                            color: Color(0xFF6F35A5),
                                          ),
                                          onPressed: () {},
                                        ),
                                      ),
                                      CircleAvatar(
                                          backgroundColor: Color(0xFFF1E6FF),
                                          child: IconButton(
                                            icon: Icon(
                                              Icons.videocam,
                                              size: 26,
                                              color: Color(0xFF6F35A5),
                                            ),
                                            onPressed: () {},
                                          )),
                                      CircleAvatar(
                                          backgroundColor: Color(0xFFF1E6FF),
                                          child: IconButton(
                                            icon: Icon(
                                              Icons.info,
                                              size: 26,
                                              color: Color(0xFF6F35A5),
                                            ),
                                            onPressed: () {},
                                          )),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  )),
                              //second row containing the buttons for media
                            ]),
                      )),
                ]))));
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
