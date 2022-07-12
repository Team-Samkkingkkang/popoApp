import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:popo_app/pages/bottom_bar.dart';
import 'package:popo_app/pages/chat.dart';
import 'package:popo_app/pages/diary_save.dart';
import 'package:popo_app/pages/diary_write.dart';
import 'package:popo_app/pages/mypage.dart';



class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  FirebaseDatabase? _database;
  DatabaseReference? reference;
  final String _databaseURL = 'https://popo-signup-default-rtdb.firebaseio.com/';
  List<Diary> diarys = List.empty(growable: true);

  @override
  void initState(){
    super.initState();
    _database = FirebaseDatabase(databaseURL: _databaseURL);
    reference = _database!.reference().child('diary');
    reference!.onChildAdded.listen((event) {
      print(event.snapshot.value.toString());
      setState(() {
        diarys.add(Diary.fromSnapShot(event.snapshot));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyPage()));
              },
              child: Image.asset(
                'assets/images/profile_img.png',
                fit: BoxFit.contain,
                width: 50,
                height: 50,
              ),
            ),
          ],
        ),
        elevation: 0.0,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(
                'assets/images/popo_diary_logo.png',
                width: 150,
                height: 120,
                fit: BoxFit.contain,
              ),
              Container(
                width: 200,
                height: 270,
                alignment: Alignment.center,
                decoration:
                    BoxDecoration(color: const Color(0xffDEF5F4), boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.7),
                    spreadRadius: 0,
                    blurRadius: 3.0,
                    offset: const Offset(0, 7),
                  ),
                ]),
                child: Image.asset('assets/images/popo_img.png'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DiaryWrite(reference: reference!,)));
                },
                child: const Text(
                  '작성하기',
                  style: TextStyle(color: Color(0xff5B5959)),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xffF0EFEF),
                  padding: const EdgeInsets.fromLTRB(25, 15, 25, 15),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const Bottom(),
      floatingActionButton: FloatingActionButton(
        child: Container(
          child: Image.asset('assets/images/popo_img.png'),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Chat()));
        },
        backgroundColor: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
