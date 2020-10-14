import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _bigger = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animation',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Batman Dark Knight Animation'),
        ),
        body: Center(
          child: GestureDetector(
            child: Container(
              width: _bigger ? 100 : 500,
              child: Image.asset('images/batman_logo.jpg'),
            ),
            onTap: () {
              setState(() {
                _bigger = !_bigger;
              });
            },
          ),
        ),
      ),
    );
  }
}
