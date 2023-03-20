import 'package:flutter/material.dart';
import 'package:flutter_first_make/10_a_Toast_message_Ftoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      theme: ThemeData(
        primaryColor: Colors.brown,
      ),
      home: MyPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Container(
          // container child가 없을 경우
          // 가능한 큰 부분을 차지하려고 한다
          color: Colors.red,
          // background color가 블루인데도 불구하고
          // container의 색으로 덧입혀진다
          width: 100,
          height: 100,
          // margin: EdgeInsets.all(20),
          // 화면 가장자리로부터 20씩 띄워준다
          margin: EdgeInsets.symmetric(
            vertical: 80,
            horizontal: 20,
          ),
          padding: EdgeInsets.fromLTRB(30, 35, 10, 10),
          child: Text('hello'),
          // child 를 주는 순간 color는
          // child의 영역의 크기로 줄어든다다
        ),
      ),
    );
  }
}
