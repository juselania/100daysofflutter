import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Card(),
    );
  }
}

class Card extends StatefulWidget {
  @override
  _CardState createState() => _CardState();
}

class _CardState extends State<Card> {
  //get mainAxisAlignment => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.all(35.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back_ios),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Center(
                        child: Text(
                      'SUPER MÁRIO!',
                      style: TextStyle(
                        fontSize: 42,
                        color: Colors.black54,
                      ),
                    )),
                    // Divider(),
                    Image.asset(
                      'assets/designer.png',
                      height: 450,
                      width: 200,
                    ),
                  ],
                ),
                height: 670,
                width: 350,
                decoration: BoxDecoration(
                    color: const Color(0xff74c47885),
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [Colors.blue, Colors.redAccent[700]],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.redAccent,
                        blurRadius: 15,
                        offset: Offset(1, 0),
                      )
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
