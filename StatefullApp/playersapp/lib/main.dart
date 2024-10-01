import "package:flutter/material.dart";

void main(){
  runApp(const PlayersApp());
}

class PlayersApp extends StatefulWidget{
  const PlayersApp({super.key});

  @override
  State<PlayersApp> createState()=> _PlayersAppState();
}

class _PlayersAppState extends State<PlayersApp> {
  int _counter=0;
  List<String> playerList =<String>["https://static.toiimg.com/thumb/resizemode-4,width-1280,height-720,msid-111741230/111741230.jpg", "https://www.jaisamand.co.in/Content/UserMenu/blogs/wp-content/uploads/2024/01/sachin-tendulkar-total-fifties_83f2af0e1.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvQp8s5gc54YhFI4twmHirvAneCI87q7fekPafcmKZdpE9sdu6mfYBHC4Dl-BI-v0BZ2w&usqp=CAU", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbJIjv8gr7KBVhK_yOKsz0Ozucq229JI18ew&s", "https://i0.wp.com/crictoday.com/wp-content/uploads/2021/01/abdevilliers-1524659264.jpg?fit=1100%2C623&ssl=1",];

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Players',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title:const Text("Players App"), 
          centerTitle:true,
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(playerList[_counter],
              height: 300,
              ),
            ],
          )
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          if (_counter <playerList.length -1) {
            _counter++;
          }else{
            _counter=0;
          }
          setState(() {});
        },
        tooltip: 'Increament',
        child:const Icon(Icons.navigate_next),
        )
      ),
    );

  }

  
  }
