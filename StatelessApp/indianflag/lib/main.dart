import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Indian Flag",
      home: MyScreen(),
    );
  }
}

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Indian Flag"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(206, 230, 200, 169),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 10, 
              height: 350, 
              color: Colors.brown, 
            ),
            // Flag
            Column(
              children: [ const SizedBox (
                height: 150,
                width: 200,
              ),
                Container(
                  width: 200,
                  height: 45,
                  color: Colors.orange,
                ),
                Container(
                  width: 200,
                  height: 45,
                  color: Colors.white,
                  child: Image.network(
                    "https://static.vecteezy.com/system/resources/previews/027/384/142/non_2x/blue-ashoka-wheel-indian-symbol-ashoka-chakra-png.png",
                  ),
                ),
                Container(
                  width: 200,
                  height: 45,
                  color: Colors.green,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
