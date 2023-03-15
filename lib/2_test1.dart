import 'package:flutter/material.dart';


void main() => runApp(MyApp());
// 실행 후 가장 최초의 앱 MyApp()

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // 가장 기본적인 MaterialApp
        title: 'first',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MyHomePage()
        // home 에 들어오자마자 실행되는 MyHomePage 만들기
        );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 얘는 scaffold
      appBar: AppBar(
        title: const Text('first'),
      ),
      body: const Center(
        child: Column(
          children: [
            Text('hello'),
            Text('hello'),
            Text('hello'),
          ],
        ),
      ),
    );
  }
}

// test 입니다