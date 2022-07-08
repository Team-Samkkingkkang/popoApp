import 'package:flutter/material.dart';
import 'package:popo_app/pages/diary_list.dart';

class Bottom extends StatelessWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 90,
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.black12,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const DiaryList()));
              },
              child: const Text(
                '      Diary      ',
                style: TextStyle(color: Color(0xff5B5959), fontSize: 20,),
              ),
            ),
            TextButton(
              onPressed: () {

              },
              child: const Text(
                'POPO SHOP',
                style: TextStyle(color: Color(0xff5B5959), fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
