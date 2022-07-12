import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:popo_app/pages/diary_save.dart';


class DiaryWrite extends StatefulWidget {
  const DiaryWrite({Key? key, required this.reference}) : super(key: key);

  final DatabaseReference reference;

  @override
  _DiaryWriteState createState() => _DiaryWriteState();
}

class _DiaryWriteState extends State<DiaryWrite> {

  TextEditingController? contentController;

  @override
  void initState() {
    super.initState();

    contentController = TextEditingController();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Daily Diary', style: TextStyle(color: Color(0xff908b8b)),),
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
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.zero),
                  ),
                  hintText: '다이어리를 작성하세요',
                ),
                maxLines: 15,
                controller: contentController,
                keyboardType: TextInputType.multiline,
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
              MaterialButton(
                onPressed: () {
                  widget.reference.push().set(Diary(
                      contentController!.value.text,
                      DateTime.now().toIso8601String()).toJson()).then((_) => Navigator.of(context).pop());
                },
                child: const Text(
                  '저장하기',
                  style: TextStyle(color: Color(0xff5B5959)
                  ),
                ),
                color: const Color(0xffF0EFEF),
                padding: const EdgeInsets.fromLTRB(30, 15, 30, 15)
              ),
            ],
          ),
        ),
      ),
    );
  }
}
