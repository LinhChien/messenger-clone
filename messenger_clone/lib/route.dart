import 'package:flutter/material.dart';
import 'package:messenger_clone/screens/chat/chat_page.dart';
import 'package:messenger_clone/screens/sign_up/sign_up_page.dart';
import 'package:messenger_clone/screens/welcome/welcome_page.dart';
import 'package:messenger_clone/screens/boxchat/boxchat_page.dart';

class RouteName {
  static const String welcomeScreen = 'WelcomePage';
  static const String signupScreen = 'SignupPage';
  static const String chatScreen = 'ChatScreen';
  static const String boxchatScreen = 'BoxChatScreen';
}

class Router {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.welcomeScreen:
        return MaterialPageRoute(
          builder: (context) => WelcomePage(),
        );
      case RouteName.signupScreen:
        return MaterialPageRoute(
          builder: (context) => SignUpScreen(),
        );
      case RouteName.chatScreen:
        return MaterialPageRoute(
          builder: (context) => ChartScreen(),
        );
      case RouteName.boxchatScreen:
        return MaterialPageRoute(
          builder: (context) => BoxChatPage(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) {
            return Scaffold(
              body: Center(
                child: Text('No route defined for ${settings.name}'),
              ),
            );
          },
        );
    }
  }
}
