import 'package:flutter/material.dart';
import 'package:flutter_first_make/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'charactor card',
      home: MyCard(),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BBANTO'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 0.0, //앱바가 떠있는 효과를 없앤다
      ),
      body: const Center( // 가로축의 정 중앙을 나타낸다
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // 세로축의 중앙
          children: [
            Text('Hello'),
            Text('Hi'),
            Text('Halo'),
          ],
        ),
      ),
    );
  }
}
