// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'column and row',
      theme: ThemeData(primaryColor: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Center(
          // row의 중앙 -> 양옆의 중앙으로 만든다
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,

            // mainAxisAlignment: MainAxisAlignment.center,
            // column 의 중앙 -> 위아래의 중앙으로 만든다
            // mainAxisSize: MainAxisSize.min,
            // 위의 center 사용시랑 보이는 모습은 같지만
            // 실제로 잡히는 공간이 컨테이너 3개의 공간만 잡힌다
            // 정 중앙으로 잡힌다
            // verticalDirection: VerticalDirection.up,
            // 아래서부터 정렬
            verticalDirection: VerticalDirection.down,
            // 위에서부터 정렬
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // 잡혀있는 공간에서 위젯을 흩뿌려준다
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.white,
                child: Text('container 1'),
              ),
              SizedBox(
                height: 30.0,
                width: 30.0,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Text('container 2'),
              ),
              SizedBox(
                height: 30.0,
                width: 30.0,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: Text('container 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
