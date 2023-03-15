// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'drawer',
      theme: ThemeData(primarySwatch: Colors.red),
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
        title: Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print('press shopping');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('press search');
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/zzang2.jpg'),
                backgroundColor: Colors.white,
              ),
              // ignore: prefer_const_literals_to_create_immutables
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/zzang4.jpg'),
                  backgroundColor: Colors.white,
                ),
                // CircleAvatar(
                //   backgroundImage: AssetImage('assets/zzang4.jpg'),
                //   backgroundColor: Colors.white,
                // )
              ],
              accountName: Text('minsoo'),
              accountEmail: Text('rlaalstn19@inu.ac.kr'),
              onDetailsPressed: () {
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                  color: Colors.red[200],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  )),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.green[300],
              ),
              title: Text('Home'),
              onTap: () {
                print('click home');
              },
              // leading 과 반대로 끝에 있는 속성
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.green[300],
              ),
              title: Text('Settings'),
              onTap: () {
                print('click settings');
              },
              // leading 과 반대로 끝에 있는 속성
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.green[300],
              ),
              title: Text('Q&A'),
              onTap: () {
                print('click Q&A');
              },
              // leading 과 반대로 끝에 있는 속성
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ), // 햄버거 메뉴가 생김
    );
  }
}
