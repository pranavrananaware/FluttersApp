import "package:flutter/material.dart";


void main(){
  runApp(const MainApp());
}

class MainApp extends StatelessWidget{
  const MainApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Column Demo",
          style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),
          ), 
          centerTitle: true,
          backgroundColor: Colors.lightBlue,       
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,



            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.amber,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              )
            ],
          ),
      ),
    );
  }
}