// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_first_make/1_main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      // primarycolor가 아니라 primaryswatch 써야함
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context2) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to the Second page'),
          onPressed: () {
            Navigator.push(
                context2,
                MaterialPageRoute(
                  builder: (context) => SecondPage(),
                ));
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to the First page'),
          onPressed: () {
            Navigator.pop(ctx);
            // 자신이 사라지기만 하면 되어서 굉장히 간단함
          },
        ),
      ),
    );
    ;
  }
}
