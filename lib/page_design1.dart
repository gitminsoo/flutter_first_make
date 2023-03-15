// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // 우측상단 디버그 띠 없앰
      title: 'BBANTO',
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  const Grade({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: Text('BBANTO'),
        backgroundColor: Colors.amber[700],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // 시작점 정렬
            children: [
              Center(
                child: CircleAvatar(
                  // circleavartar를 누른 후 전구모양 누르면
                  // 거기서 center해서 위젯을 중앙 정렬 가능
                  // 아주 나이스스
                  backgroundImage: AssetImage('./assets/zzang1.gif'),
                  radius: 60.0,
                ),
              ),
              Divider(
                height: 60.0, // 디바이더의 위 아래 합쳐서 60
                // 위에서 30 아래서 30만큼 띄워져 있다
                color: Colors.grey,
                thickness: 0.5,
                endIndent: 30.0, // 위에서 모든 애들을 좌측에서 30만큼 띄웠으므로
              ),
              Text(
                'Name',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0, // 철자간의 간격
                ),
              ),
              SizedBox(
                // name , bbanto 사이 넓히기
                height: 10.0,
              ),
              Text(
                'BBANTO',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                // bbanto & level 사이 넓히기
                height: 30.0,
              ),
              Text(
                'BBANTO POWER LEVEL',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0, // 철자간의 간격
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '14',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30.0, // between 14 & checkbox
              ),
              Row(
                // const 쓰면 shade 에러가 가끔 난다 ->
                // 전구 클릭 후 ignore~~ 선택 -> 해결
                // 나오는 위젯마다 해주기
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10.0, // between checkbox and Text
                  ),
                  Text(
                    'using light saber',
                    style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10.0, // between checkbox and Text
                  ),
                  Text(
                    'face hero tattoo',
                    style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10.0, // between checkbox and Text
                  ),
                  Text(
                    'fire flames',
                    style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/zzang3.png'),
                  radius: 40.0,
                  backgroundColor: Colors.amber[800],
                  // png 이미지의 배경을 하나로 합쳐주기 위함
                ),
              )
            ]),
      ),
    );
  }
}
