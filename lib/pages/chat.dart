import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: const <Widget>[
            Expanded(
              child: TextField(
                decoration: InputDecoration(hintText: '메시지를 입력하세요.'),
              ),
            ),
            SizedBox(
              width: 8.0,
            ),
            TextButton(
              onPressed: null,
              child: Icon(Icons.send),
            ),
          ],
        ),
      )
    );
  }
}
