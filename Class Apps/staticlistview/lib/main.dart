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
            "List View",
            style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          
            children: [
              Image.network (
                "https://static.toiimg.com/thumb/msid-113209976,width-1280,height-720,resizemode-4/113209976.jpg"),
               const Icon(
                Icons.favorite,
                color: Colors.red,
               ),
               const Text(
                "Bhari",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                ),
               ),
                Image.network (
                "https://static.toiimg.com/thumb/msid-113209976,width-1280,height-720,resizemode-4/113209976.jpg"),
               GestureDetector(
                onTap: (){
                  print("Button Pressed");
                },
                child: Container(
                  height: 50,
                  color: Colors.amber,
                  child: const Text("Press Me"
                  ),
                ),
               ),
               
            ],
          
        ),
      ),
    );
  }
}
