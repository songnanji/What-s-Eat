import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); //앱 시작 해주는 함수
}

class MyApp extends StatelessWidget {  // stless 치고 탭키 누른
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar( actions : [Icon(Icons.star),Icon(Icons.star)], leading: Icon(Icons.star), title: Text("오늘 뭐 먹지"), ),

        body: Center(
          child: Container(
            width: 150, height: 50,
            decoration: BoxDecoration(
              color: Colors.lightGreenAccent[100],
              border: Border.all(color: Colors.blueAccent),
              borderRadius: BorderRadius.all(Radius.circular(7))
            ),
            margin: EdgeInsets.fromLTRB(0,30,0,0),
            child: Text(' View list of like food ', style: TextStyle( fontWeight: FontWeight.w700))),



          ),


      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 70,
          child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.home_filled , color: Colors.lightGreen),
            Icon(Icons.message_rounded, color: Colors.lightGreen),
            Icon(Icons.contact_page, color: Colors.lightGreen),
          ],
        ),
      ),
    ),
      )
    );

  }
}

