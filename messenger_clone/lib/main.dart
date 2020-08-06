import 'package:flutter/material.dart';
import 'package:messenger_clone/route.dart';
import 'package:messenger_clone/screens/welcome/welcome_page.dart';
import 'package:messenger_clone/constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: RouteName.welcomeScreen,
      onGenerateRoute: Router.generateRoute,
      home: WelcomePage(),
    );
  }
}
