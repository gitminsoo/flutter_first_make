import 'package:flutter/material.dart';
// import 후에 fm 치면 자동완성성

void main() => runApp(MyApp());
// runApp 안에는 위젯이 들어가야 함

// stl 치면 자동완성
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First app',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First app'),
      ),
      body: const Center(
        child: Column(
          children: <Widget>[
            Text('Hello'),
            Text('Hi'),
            Text('Halo')
          ], // 이 안에 세로로 넣을 애들을 정렬
        ),
      ),
    );
  }
}
