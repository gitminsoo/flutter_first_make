// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_first_make/1_main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'snack bar',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Snack Bar'),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Builder(
          builder: (BuildContext ctx) {
            return Center(
              child: TextButton(
                // flatbutton -> textbutton 으로 바뀜
                child: Text(
                  'Show me',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),

                onPressed: () {
                  ScaffoldMessenger.of(ctx)
                      .showSnackBar(SnackBar(content: Text('Hello')));
                  // scaffold 메세지 주는 법이 위와같이 바뀜 주의
                },
              ),
            );
          },
        ));
  }
}

// context를 받아오는 위치를 바꾸었고 
// 그를 이용하여 builder 의 context인 ctx로 바꾼다