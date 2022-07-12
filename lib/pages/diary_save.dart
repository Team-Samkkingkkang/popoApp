import 'package:firebase_database/firebase_database.dart';

class Diary {
  String? key;
  late String content;
  late String createTime;

  Diary(this.content, this.createTime);

  Diary.fromSnapShot(DataSnapshot snapshot)
    : key = snapshot.key,
      content = snapshot.value['content'],
      createTime = snapshot.value['createTime'];


  toJson(){
    return {
      'content' : content,
      'createTime' : createTime
    };
  }
}