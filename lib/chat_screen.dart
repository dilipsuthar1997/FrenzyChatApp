import 'package:flutter/material.dart';
import 'package:frenzy_chat_app_listview/chat_messages.dart';

class ChatScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ChatScreenState();
  }
}

class ChatScreenState extends State<ChatScreen> {

  TextEditingController _textController =TextEditingController();
  List<ChatMessages> _messages = List();

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(
              padding: EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder: (_, int index) => _messages[index],
              itemCount: _messages.length,
            ),
          ),

          Divider(height: 1.0,),

          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
            ),
            child: _textComposerWidget(),
          )
        ],
      );
  }

  Widget _textComposerWidget() {
    return IconTheme(
      data: IconThemeData(
        color: Colors.red
      ),
          child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: <Widget>[

            Flexible(
              child: Card(
                elevation: 3.0,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                decoration: InputDecoration.collapsed(hintText: 'Send s message'),
                controller: _textController,
                onSubmitted: _handleSubmitted
              ),
                )
              )
            ),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                icon: Icon(Icons.send),
                onPressed: () {_handleSubmitted(_textController.text);},
              ),
            )

          ],
        )
      ),
    );
  }

  void _handleSubmitted(String text) {
    _textController.clear();
    ChatMessages messages = ChatMessages(text: text);
    setState(() {
      _messages.insert(0, messages);
    });
  }
}

