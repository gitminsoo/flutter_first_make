// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ftoast/ftoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.brown),
        debugShowCheckedModeBanner: false,
        title: 'toast message',
        home: MyPage());
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Toast message'),
          centerTitle: true,
        ),
        body: Center(
          child: TextButton(
            onPressed: () {
              fToast(context);
            },
            child: Text(
              'toast',
              style: TextStyle(
                color: Colors.blueAccent,
              ),
            ),
          ),
        ));
  }
}

void fToast(BuildContext context) {
  FToast.toast(
    context,
    msg: 'halo it\'s Ftoast',
    msgStyle: TextStyle(
      color: Colors.amber,
    ),
    color: Colors.deepOrange,
    //  color 로 배경색을 바꿀 수 있음 
  );
}


// ftoast 예제
// import 할때 둘중에 하나만 해줘야함
