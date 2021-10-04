import 'package:flutter/material.dart';

import 'package:sabji_mandi/screens/home_screen.dart';
import 'package:sabji_mandi/screens/third_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      routes: {
        '/homeScreen': (BuildContext context) => const HomeScreen(),
      },
    );
  }
}
