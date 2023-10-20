import 'package:flutter/material.dart';
import 'package:project1/src/login_page.dart';

class Miapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Loginpage.id,
      routes: {
        Loginpage.id: (context) => Loginpage(),
        Loginpage.id: (context) => Loginpage()
      },
    );
  }
}
