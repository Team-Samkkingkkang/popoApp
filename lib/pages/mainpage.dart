import 'package:flutter/material.dart';
import 'package:popo_app/pages/bottom_bar.dart';
import 'package:popo_app/pages/chat.dart';
import 'package:popo_app/pages/diary_write.dart';
import 'package:popo_app/pages/mypage.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
                          builder: (context) => const DiaryWrite()));
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
