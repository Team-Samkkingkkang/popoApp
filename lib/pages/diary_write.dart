import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class DiaryWrite extends StatefulWidget {
  const DiaryWrite({Key? key}) : super(key: key);

  @override
  _DiaryWriteState createState() => _DiaryWriteState();
}

class _DiaryWriteState extends State<DiaryWrite> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daily Diary', style: TextStyle(color: Color(0xff908b8b)),),
        centerTitle: true,
        backgroundColor: const Color(0xffDEF5F4),
        elevation: 0.0,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 40,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  DateFormat('yyyy년 MM월 dd일').format(DateTime.now()),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.zero),
                  ),
                  hintText: '다이어리를 작성하세요',
                ),
                maxLines: 15,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.photo),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  '저장하기',
                  style: TextStyle(color: Color(0xff5B5959)),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xffF0EFEF),
                  padding: const EdgeInsets.fromLTRB(25, 15, 25, 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
