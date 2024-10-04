import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:  AppBar(
          title: const Text(
            "Column Scroll Demo",
            style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network (
                "https://static.toiimg.com/thumb/msid-113209976,width-1280,height-720,resizemode-4/113209976.jpg"),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.amber,
                ),
                Image.network (
                "https://static.toiimg.com/thumb/msid-113209976,width-1280,height-720,resizemode-4/113209976.jpg"),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.amber,
                ),
                Image.network (
                "https://static.toiimg.com/thumb/msid-113209976,width-1280,height-720,resizemode-4/113209976.jpg"),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.amber,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
