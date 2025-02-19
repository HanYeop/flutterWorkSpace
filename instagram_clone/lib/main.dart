import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(CupertinoIcons.camera, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.paperplane, color: Colors.black),
            onPressed: () {},
          )
        ],
        title: Image.asset(
          'assets/logo.png',
          height: 32,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            "https://i.ibb.co/YjjLCS7/cat.png",
            height: 400,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(CupertinoIcons.heart, color: Colors.black),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(CupertinoIcons.chat_bubble, color: Colors.black),
                onPressed: () {},
              ),
              Spacer(),
              IconButton(
                icon: Icon(CupertinoIcons.bookmark, color: Colors.black),
                onPressed: () {},
              ),
            ],
          ),
          // 좋아요
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "2 likes",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // 설명
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "My cat is docile even when bathed. I put a duck on his head in the wick and he's staring at me. Isn't it so cute??",
            ),
          ),

          // 날짜
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "FEBURARY 6",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
