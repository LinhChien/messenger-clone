import 'package:flutter/material.dart';
import 'package:messenger_clone/constants.dart';
import 'package:messenger_clone/screens/boxchat/boxchat_page.dart';
import 'package:messenger_clone/screens/profile/profile.dart';

class ChartScreen extends StatelessWidget {
  List<String> profilePics = [
    "1.jpg",
    "2.jpg",
    "3.jpg",
    "4.jpg",
    "5.jpg",
    "6.jpg",
    "avata.jpg",
    "avata2.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Chats",
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22,
              color: Colors.white,
              fontFamily: "Roboto"),
        ),
        leading: Container(
          padding: EdgeInsets.only(left: 16, top: 3, bottom: 3),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: ClipOval(
              child: Image.asset(
                "assets/img/${profilePics[1]}",
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        actions: <Widget>[
          CircleAvatar(
            backgroundColor: Color(0xFFF1E6FF),
            child: IconButton(
              icon: Icon(
                Icons.photo_camera,
                size: 22,
                color: Color(0xFF6F35A5),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Profile();
                    },
                  ),
                );
              },
            ),
          ),
          SizedBox(
            width: 20,
          ),
          CircleAvatar(
            backgroundColor: Color(0xFFF1E6FF),
            child: IconButton(
              icon: Icon(
                Icons.edit,
                size: 22,
                color: Color(0xFF6F35A5),
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(
            width: 16,
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16),
            child: Container(
              padding: EdgeInsets.only(left: 16, top: 4, bottom: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Color(0xFFF1E6FF),
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.search,
                      color: Color(0xFF6F35A5),
                    ),
                    hintText: "Search",
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(159, 159, 159, 1),
                    )),
              ),
            ),
          ),
          Container(
            height: 85,
            margin: EdgeInsets.only(top: 8, bottom: 8, left: 16),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  width: 65, //space
                  margin: EdgeInsets.only(right: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            height: 60,
                            width: 60,
                            padding: EdgeInsets.all((index % 2 == 1) ? 2 : 0),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                color: Color(0xFFF1E6FF),
                                border: (index % 2 == 0)
                                    ? Border.all(
                                        width: 0, color: kPrimaryLightColor)
                                    : Border.all(
                                        color: Color.fromRGBO(0, 132, 255, 1),
                                        width: 3)),
                            child: ClipOval(
                              child: (index == 0)
                                  ? IconButton(
                                      icon: Icon(
                                        Icons.add,
                                        size: 30,
                                        color: Color(0xFF6F35A5),
                                      ),
                                      onPressed: () {},
                                    )
                                  : Image.asset(
                                      "assets/img/${profilePics[index]}",
                                      fit: BoxFit.fill,
                                    ),
                            ),
                          ),
                          Positioned(
                            child: Container(
                              height: (index != 0) ? 15 : 0,
                              width: 15,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(9)),
                                color: Colors.green,
                                border:
                                    Border.all(color: Colors.green, width: 1),
                              ),
                            ),
                            bottom: 0,
                            right: 0,
                          )
                        ],
                      ),
                      Text(
                        "Your Story",
                        style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: (index % 2 == 1)
                                ? Color(0xFF6F35A5)
                                : Color.fromRGBO(123, 123, 123, 1)),
                      )
                    ],
                  ),
                );
              },
              itemCount: 8,
              scrollDirection: Axis.horizontal,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 8),
            height: 350,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: EdgeInsets.only(bottom: 10, right: 8),
                  leading: Stack(
                    children: <Widget>[
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Color(0xFFF1E6FF),
                            border: Border.all(
                                width: 0, color: kPrimaryLightColor)),
                        child: ClipOval(
                          child:
                              Image.asset("assets/img/${profilePics[index]}"),
                        ),
                      ),
                      Positioned(
                        child: Container(
                          height: (index % 2 == 0) ? 15 : 0,
                          width: 15,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(9)),
                              color: Colors.green,
                              border:
                                  Border.all(color: Colors.green, width: 0)),
                        ),
                        bottom: 0,
                        right: 0,
                      )
                    ],
                  ),
                  title: Padding(
                    padding: EdgeInsets.only(bottom: 6),
                    child: Text(
                      "Linh Chien",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF6F35A5)),
                    ),
                  ),
                  subtitle: Text(
                    "Đây là tin nhắn mới",
                    style: TextStyle(
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(123, 123, 123, 1)),
                  ),
                  trailing: Icon(
                    Icons.check_circle,
                    size: 20,
                    color: (index % 2 == 0)
                        ? Color(0xFF6F35A5)
                        : Colors.transparent,
                  ),
                );
              },
            ),
          )
        ],
      ),
      bottomSheet: Container(
        height: 50,
        color: Color(0xFFF1E6FF),
        padding: EdgeInsets.only(left: 80, right: 80),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 40,
                  width: 40,
                  child: IconButton(
                    icon: Image.asset(
                      "assets/img/mmessage.png",
                      fit: BoxFit.fitHeight,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return BoxChatPage();
                          },
                        ),
                      );
                    },
                  ),
                ),
                Positioned(
                  child: Container(
                    height: 18,
                    width: 18,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(11)),
                        color: Colors.redAccent,
                        border: Border.all(color: Colors.red, width: 0)),
                    child: Center(
                      child: Text(
                        "2",
                        style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  top: 2,
                  right: 0,
                )
              ],
            ),
            Container(
              height: 40,
              width: 40,
              child: IconButton(
                icon: Image.asset(
                  "assets/img/people.png",
                  fit: BoxFit.fitHeight,
                ),
                onPressed: () {},
              ),
            ),
            Container(
              height: 40,
              width: 40,
              child: IconButton(
                icon: Image.asset(
                  "assets/img/navigation.png",
                  fit: BoxFit.fitHeight,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );

    return scaffold;
  }
}
