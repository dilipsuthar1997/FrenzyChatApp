import 'package:flutter/material.dart';
import 'package:frenzy_chat_app_listview/chat_messages.dart';
import 'package:frenzy_chat_app_listview/chat_screen.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    List<ChatMessages> _messages =List();

    return Scaffold(
      appBar: AppBar(
        title: Text('Frenzy Chat'),
      ),
      body: ChatScreen(),
    );
  }
}