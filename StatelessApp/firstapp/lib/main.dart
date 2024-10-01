import "package:flutter/material.dart";

void main(){
  runApp(const MyApp());
  
}

  class MyApp extends StatelessWidget{
    const MyApp({super.key});

    @override 
    // ignore: unused_element
    Widget build (BuildContext context){
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text("First App"),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: const Center(
            child: Text("Incubators"),
          )
        ),
      );

    }
  }
