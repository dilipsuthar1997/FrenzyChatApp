import 'package:flutter/material.dart';
import 'package:frenzy_chat_app_listview/home_page.dart';

void main(List<String> args)  {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Frenzy Chat',
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.yellow,
        brightness: Brightness.light
      ),
      home: HomePage(),
    );
  }
}