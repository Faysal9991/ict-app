import 'package:flutter/material.dart';
import 'package:ict_app/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}
