// ignore_for_file: prefer_const_constructors

// snackbar message 전용

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'toast',
        theme: ThemeData(primarySwatch: Colors.brown),
        debugShowCheckedModeBanner: false,
        home: MyPage());
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
      ),
      body: MySnackBar(),
    );
  }
}

class MySnackBar extends StatelessWidget {
  const MySnackBar({super.key});

  @override
  Widget build(BuildContext context2) {
    return Center(
        child: ElevatedButton(
      child: Text('Show me'),
      onPressed: () {
        ScaffoldMessenger.of(context2).showSnackBar(
          SnackBar(
            content: Text(
              'halo',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.teal,
            duration: Duration(milliseconds: 1000),
          ),
        );
      },
    ));
  }
}
