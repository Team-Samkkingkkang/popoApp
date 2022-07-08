import 'package:flutter/material.dart';

class DiaryWrite extends StatefulWidget {
  const DiaryWrite({Key? key}) : super(key: key);

  @override
  _DiaryWriteState createState() => _DiaryWriteState();
}

class _DiaryWriteState extends State<DiaryWrite> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('다이어리 작성하기 페이지'),
    );
  }
}
