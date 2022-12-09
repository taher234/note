import 'package:flutter/material.dart';
import 'package:note/views/notesViewScreen/notesViewScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins",
        brightness: Brightness.dark,
        textTheme: const TextTheme(
          headline4: TextStyle(fontWeight: FontWeight.w400, fontSize: 28),
          headline5: TextStyle(color: Colors.black, fontSize: 26),
          bodyText1: TextStyle(color: Colors.black54, fontSize: 18),
          bodyText2: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w400, fontSize: 16),
        ),
      ),
      home: notesView(),
    );
  }
}

